import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:tencent_chat_i18n_tool/tools/hash_key.dart';

Future<List<String>> extractChineseEntries(List<String> directoriesToScan) async {
  List<String> entries = [];

  for (String dirPath in directoriesToScan) {
    Directory dir = Directory(dirPath);
    await for (FileSystemEntity entity in dir.list(recursive: true, followLinks: false)) {
      if (entity is File && entity.path.endsWith('.dart')) {
        String fileContent = await entity.readAsString();
        entries.addAll(findChineseEntriesInFile(fileContent));
      }
    }
  }

  final originalEntriesList = entries.toSet().toList();
  final filteredEntries = _dealWithResult(originalEntriesList);

  return filteredEntries.toSet().toList();
}

List<String> findChineseEntriesInFile(String fileContent) {
  RegExp singleQuoteRegExp = RegExp(r"'([^']*[\u4e00-\u9fa5]{1,200}[^']*)'");
  RegExp doubleQuoteRegExp = RegExp(r'"([^"]*[\u4e00-\u9fa5]{1,200}[^"]*)"');

  Iterable<Match> singleQuoteMatches = singleQuoteRegExp.allMatches(fileContent);
  Iterable<Match> doubleQuoteMatches = doubleQuoteRegExp.allMatches(fileContent);

  List<String> entries = [];

  for (Match match in singleQuoteMatches) {
    entries.add(match.group(1)!);
  }

  for (Match match in doubleQuoteMatches) {
    entries.add(match.group(1)!);
  }

  return entries;
}

List<String> _dealWithResult(List<String> originResult) {
  RegExp parameterRegExp = RegExp(r'(?<=\{{)[^}]*(?=\}})');
  RegExp chineseRegExp = RegExp(r'[\u4e00-\u9fa5]');

  List<String> arr = List.from(originResult.where((item) => item.isNotEmpty));
  List<String> noRepeatArr = arr.toSet().toList();
  List<String> chineseArr = noRepeatArr.where((item) => chineseRegExp.hasMatch(item)).toList();
  List<String> finalArr = chineseArr.where((item) => !parameterRegExp.hasMatch(item)).toList();

  return finalArr;
}

Future<bool> checkPackagePath(String packagePath) async {
  Directory packageDirectory = Directory(packagePath);
  if (await packageDirectory.exists()) {
    return true;
  } else {
    return false;
  }
}

void readNewEntriesFromFile(String packagePath) async {
  // Specify the path to the user's text file containing new entries
  String userTxtFilePath = './new_language_entries.txt';

  // Check if the file exists, and create it if it doesn't
  final file = File(userTxtFilePath);
  if (!file.existsSync()) {
    stdout.write("File 'new_language_entries.txt' does not exist. Creating it...");
    await file.create();
  }

  // Read the user's text file line by line
  final lines = await file.readAsLines();

  // Create a map to store entries and their corresponding hash keys
  Map<String, String> entriesWithHashKeys = {};

  // Iterate through each line (entry) in the text file
  for (String entry in lines) {
    // Generate the hash key for the entry
    final hashKeyEntry = HashKey.getHashKey(entry);

    // Store the entry and its hash key in the map
    entriesWithHashKeys[hashKeyEntry] = entry;
  }

  // Add the new entries with their hash keys to each language JSON file
  Directory(p.join(packagePath, 'lib', 'language_json')).listSync().where((element) => element is File && !element.path.endsWith('strings.g.dart')).forEach((jsonFile) {
    // Explicitly cast FileSystemEntity to File
    File file = jsonFile as File;

    try {
      // Read the existing JSON file
      Map<String, dynamic> jsonContent = json.decode(file.readAsStringSync());

      // Add the new entries with their hash keys without overwriting existing entries
      entriesWithHashKeys.forEach((key, value) {
        jsonContent.putIfAbsent(key, () => value);
      });

      // Create a JsonEncoder with indentation for pretty printing
      JsonEncoder encoder = const JsonEncoder.withIndent('  ');

      // Write the updated content back to the JSON file
      file.writeAsStringSync(encoder.convert(jsonContent));
      stdout.write("Successfully added new entries to ${file.path}");
    } catch (e) {
      stdout.write("Failed to add new entries to ${file.path}: ${e.toString()}");
    }
  });
}