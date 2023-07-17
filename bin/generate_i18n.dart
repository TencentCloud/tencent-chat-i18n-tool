import 'dart:io';

import 'package:fast_i18n/src/builder/build_config_builder.dart';
import 'package:fast_i18n/src/decoder/base_decoder.dart';
import 'package:fast_i18n/src/decoder/csv_decoder.dart';
import 'package:fast_i18n/src/generator_facade.dart';
import 'package:fast_i18n/src/model/build_config.dart';
import 'package:fast_i18n/src/model/i18n_locale.dart';
import 'package:fast_i18n/src/model/namespace_translation_map.dart';
import 'package:fast_i18n/src/stats_facade.dart';
import 'package:fast_i18n/src/utils/file_utils.dart';
import 'package:fast_i18n/src/utils/regex_utils.dart';
import 'package:fast_i18n/src/utils/path_utils.dart';
import 'package:file/local.dart';

/// To run this:
/// -> flutter pub run fast_i18n
///
/// Scans translation files and builds the dart file.
/// This is usually faster than the build_runner implementation.
void generateTranslationDartFile(String baseI18NPath) async {
  const fs = LocalFileSystem();
  const bool watchMode = false;
  const bool statsMode = false;
  const bool verbose = true;

  print('Generating translations...\n');

  final stopwatch = Stopwatch();
  if (!watchMode) {
    // only run stopwatch if generating once
    stopwatch.start();
  }

  if(!(fs.isDirectorySync("languages"))){
    Directory("languages").create();
  }

  // get all files recursively (no directories)
  Iterable<FileSystemEntity> files =
      (await Directory("languages").list(recursive: true).toList())
          .where((item) => FileSystemEntity.isFileSync(item.path));

  final buildConfig = await getBuildConfig(files, verbose);

  // filter files according to build config
  files = files.where((file) {
    if (!file.path.endsWith(buildConfig.inputFilePattern)) return false;

    if (buildConfig.inputDirectory != null &&
        !file.path.contains(buildConfig.inputDirectory!)) return false;

    return true;
  });

  await generateTranslations(
    buildConfig: buildConfig,
    files: files,
    verbose: verbose,
    baseI18NPath: baseI18NPath,
    stopwatch: stopwatch,
    statsMode: statsMode,
  );
}

Future<BuildConfig> getBuildConfig(
  Iterable<FileSystemEntity> files,
  bool verbose,
) async {
  BuildConfig? buildConfig;
  for (final file in files) {
    final fileName = file.path.getFileName();

    if (fileName == 'build.yaml') {
      final content = await File(file.path).readAsString();
      buildConfig = BuildConfigBuilder.fromYaml(content);
      if (buildConfig != null) {
        if (verbose) {
          print('Found build.yaml in ${file.path}');
        }
        break;
      }
    }
  }

  buildConfig ??= BuildConfigBuilder.fromMap({});

  // convert to absolute paths
  buildConfig = buildConfig.withAbsolutePaths();

  // show build config
  if (verbose) {
    print('');
    buildConfig.printConfig();
    print('');
  }

  return buildConfig;
}

const _defaultPadLeft = 12;
const _namespacePadLeft = 24;

/// Reads the translations from hard drive and generates the g.dart file
/// The [files] are already filtered (only translation files!).
Future<void> generateTranslations({
  required BuildConfig buildConfig,
  required Iterable<FileSystemEntity> files,
  required bool verbose,
  String? baseI18NPath,
  Stopwatch? stopwatch,
  bool statsMode = false,
}) async {
  // STEP 1: determine base name and output file name / path
  String? baseName;
  String? outputFileName;
  String outputFilePath;

  if (buildConfig.outputFileName != null) {
    // use newer version
    // this will have a default non-null value in the future (6.0.0+)
    outputFileName = buildConfig.outputFileName!;
    baseName = buildConfig.outputFileName!.getFileNameNoExtension();
  } else {
    // use legacy mode by taking the namespace name
    for (final file in files) {
      final fileNameNoExtension = file.path.getFileNameNoExtension();
      final baseFile = RegexUtils.baseFileRegex.firstMatch(fileNameNoExtension);
      if (baseFile != null) {
        baseName = fileNameNoExtension;
        outputFileName = baseName + buildConfig.outputFilePattern;

        if (verbose) {
          print(
              'Found base name: "$baseName" (used for output file name and class names)');
        }
        break;
      }
    }
  }

  if (baseName == null || outputFileName == null) {
    print('Error: No base translation file.');
    return;
  }

  if (buildConfig.outputDirectory != null) {
    // output directory specified, use this path instead
    outputFilePath =
        buildConfig.outputDirectory! + Platform.pathSeparator + outputFileName;
  } else {
    // use the directory of the first (random) translation file
    final fileName = files.first.path.getFileName();
    outputFilePath =
        files.first.path.replaceAll("${Platform.pathSeparator}$fileName", '') +
            Platform.pathSeparator +
            outputFileName;
  }

  // STEP 2: scan translations
  if (verbose) {
    print('Scanning translations...');
    print('');
  }

  final translationMap = NamespaceTranslationMap();
  final padLeft = buildConfig.namespaces ? _namespacePadLeft : _defaultPadLeft;
  for (final file in files) {
    final content = await File(file.path).readAsString();
    final Map<String, dynamic> translations;
    try {
      translations = BaseDecoder.getDecoderOfFileType(buildConfig.fileType)
          .decode(content);
    } on FormatException catch (e) {
      print('');
      throw 'File: ${file.path}\n$e';
    }

    final fileNameNoExtension = file.path.getFileNameNoExtension();
    final baseFileMatch =
        RegexUtils.baseFileRegex.firstMatch(fileNameNoExtension);
    if (baseFileMatch != null) {
      // base file (file without locale, may be multiples due to namespaces!)
      final namespace = baseFileMatch.group(1)!;

      if (buildConfig.fileType == FileType.csv &&
          CsvDecoder.isCompactCSV(content)) {
        // compact csv

        translations.forEach((key, value) {
          final locale = I18nLocale.fromString(key);
          final localeTranslations = value as Map<String, dynamic>;
          translationMap.addTranslations(
            locale: locale,
            namespace: namespace,
            translations: localeTranslations,
          );

          if (verbose) {
            final namespaceLog = buildConfig.namespaces ? '($namespace) ' : '';
            final base = locale == buildConfig.baseLocale ? '(base) ' : '';
            print(
                '${('$base$namespaceLog${locale.languageTag}').padLeft(padLeft)} -> ${file.path}');
          }
        });
      } else {
        // json, yaml or normal csv

        translationMap.addTranslations(
          locale: buildConfig.baseLocale,
          namespace: namespace,
          translations: translations,
        );

        if (verbose) {
          final namespaceLog = buildConfig.namespaces ? '($namespace) ' : '';
          print(
              '${('(base) $namespaceLog${buildConfig.baseLocale.languageTag}').padLeft(padLeft)} -> ${file.path}');
        }
      }
    } else {
      // secondary files (strings_x)
      final match =
          RegexUtils.fileWithLocaleRegex.firstMatch(fileNameNoExtension);
      if (match != null) {
        final namespace = match.group(2)!;
        final language = match.group(3);
        final script = match.group(5);
        final country = match.group(7);
        final locale = I18nLocale(
          language: language,
          script: script,
          country: country,
        );

        translationMap.addTranslations(
          locale: locale,
          namespace: namespace,
          translations: translations,
        );

        if (verbose) {
          final namespaceLog = buildConfig.namespaces ? '($namespace) ' : '';
          print(
              '${(namespaceLog + locale.languageTag).padLeft(padLeft)} -> ${file.path}');
        }
      }
    }
  }

  // STATS MODE
  if (statsMode) {
    StatsFacade.parse(
      buildConfig: buildConfig,
      translationMap: translationMap,
    ).printResult();
    if (stopwatch != null) {
      print('');
      print('Scan done. (${stopwatch.elapsed})');
    }
    return; // skip generation
  }

  // STEP 3: generate .g.dart content
  final result = GeneratorFacade.generate(
    buildConfig: buildConfig,
    baseName: baseName,
    translationMap: translationMap,
    showPluralHint: verbose,
  );

  // STEP 4: write output to hard drive
  if(baseI18NPath != null && baseI18NPath.isNotEmpty){
    outputFilePath = "${baseI18NPath}strings.g.dart";
  }
  FileUtils.createMissingFolders(filePath: outputFilePath);
  if (buildConfig.outputFormat == OutputFormat.singleFile) {
    // single file
    FileUtils.writeFile(
      path: outputFilePath,
      content: joinAsSingleOutput(result.header, result.translations, result.flatMap),
    );
  } else {
    // multiple files
    FileUtils.writeFile(
      path: BuildResultPaths.mainPath(outputFilePath),
      content: result.header,
    );
    for (final entry in result.translations.entries) {
      final locale = entry.key;
      final localeTranslations = entry.value;
      FileUtils.writeFile(
        path: BuildResultPaths.localePath(
          outputPath: outputFilePath,
          locale: locale,
          pathSeparator: Platform.pathSeparator,
        ),
        content: localeTranslations,
      );
    }
    if (result.flatMap != null) {
      FileUtils.writeFile(
        path: BuildResultPaths.flatMapPath(
          outputPath: outputFilePath,
          pathSeparator: Platform.pathSeparator,
        ),
        content: result.flatMap!,
      );
    }
  }

  if (verbose) {
    if (buildConfig.outputFileName == null && buildConfig.namespaces) {
      print('');
      print(
          'WARNING: Please specify "output_file_name". Using fallback file name for now.');
    }

    print('');
    if (buildConfig.outputFormat == OutputFormat.singleFile) {
      print('Output: $outputFilePath');
    } else {
      print('Output:');
      print(' -> $outputFilePath');
      for (final locale in result.translations.keys) {
        print(' -> ${BuildResultPaths.localePath(
          outputPath: outputFilePath,
          locale: locale,
          pathSeparator: Platform.pathSeparator,
        )}');
      }
      if (result.flatMap != null) {
        print(' -> ${BuildResultPaths.flatMapPath(
          outputPath: outputFilePath,
          pathSeparator: Platform.pathSeparator,
        )}');
      }
      print('');
    }

    if (stopwatch != null) {
      print('Translations generated successfully. (${stopwatch.elapsed})');
    }
  }
}

// returns current time in HH:mm:ss
String get currentTime {
  final now = DateTime.now();
  return '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}';
}

extension on String {
  /// converts /some/path/file.json to file.json
  String getFileName() {
    return PathUtils.getFileName(this);
  }

  /// converts /some/path/file.json to file
  String getFileNameNoExtension() {
    return PathUtils.getFileNameNoExtension(this);
  }
}

String joinAsSingleOutput(String header, Map<I18nLocale, String> translations, String? flatMap) {
  final buffer = StringBuffer();
  buffer.writeln(header);
  buffer.writeln('// translations');
  for (final localeTranslations in translations.values) {
    buffer.write(localeTranslations);
  }
  if (flatMap != null) {
    buffer.writeln();
    buffer.write(flatMap);
  }
  return buffer.toString();
}
