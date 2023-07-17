
import 'dart:io';
import 'package:file/local.dart';
import 'package:tencent_chat_i18n_tool/tools/utils.dart';
import 'package:yaml/yaml.dart';
import 'generate_i18n.dart';
import 'package:path/path.dart' as p;

void main(List<String> arguments) async {
  bool isPathValid = false;
  stdout.write("\n\nWelcome to Tencent Cloud Chat Internationalization (i18n) Tool.\n\n");

  stdout.write("Please refer to our documentation at https://www.tencentcloud.com/document/product/1047/52154 for detailed instructions on how to use this tool.\n\n");

  stdout.write("If you require custom internationalization features, such as adding or modifying language entries, \nplease fork our package's GitHub repository located at https://github.com/TencentCloud/tencent-chat-i18n-tool. \nAfter forking, clone the repository to a directory of your choice. \nTo proceed with customization, provide the path to the directory containing your forked copy of the plugin.\n");

  // Read the user's pubspec.yaml file
  String pubspecContent = await File('pubspec.yaml').readAsString();
  final pubspec = loadYaml(pubspecContent);

  // Try to find the package path in the pubspec.yaml file
  String? packagePath;

  while (!isPathValid) {
    packagePath = null;
    try {
      packagePath = pubspec['dependency_overrides']['tencent_chat_i18n_tool']['path'];
    } catch (_) {}
    try {
      packagePath = pubspec['dependencies']['tencent_chat_i18n_tool']['path'];
    } catch (_) {}

    if (packagePath != null) {
      // If the package path is found, display it to the user and ask for confirmation
      stdout.write("\nThe local path to your forked repository found in 'pubspec.yaml' is: $packagePath\n");
      stdout.write("Do you want to use this path? (Y/n): ");
      String? usePath = stdin.readLineSync();
      if (usePath == null || usePath.toLowerCase() == 'y') {
        isPathValid = await checkPackagePath(packagePath);
        if (!isPathValid) {
          stdout.write("The specified package path is not valid. Please enter a new path.\n");
          continue;
        }
      } else {
        // If the user does not confirm, ask for a custom path
        stdout.write("Please enter the local path to your forked repository for further customization: ");
        packagePath = stdin.readLineSync();
        if (packagePath != null && packagePath.trim().isNotEmpty) {
          isPathValid = await checkPackagePath(packagePath);
          if (!isPathValid) {
            stdout.write("The specified package path is not valid. Please enter a new path.\n");
            continue;
          }
        } else {
          print("Invalid input. Please enter a non-empty path.");
          continue;
        }
      }
    } else {
      // If the package path is not found, prompt the user to enter a custom path
      stdout.write("The local path to your forked repository was not found in 'pubspec.yaml'.\n");
      stdout.write("If you do not specify a local path in 'pubspec.yaml', subsequent operations will not take effect.\n");
      stdout.write("Please enter the local path to your forked repository for further customization: ");
      packagePath = stdin.readLineSync();
      if (packagePath != null && packagePath.trim().isNotEmpty) {
        isPathValid = await checkPackagePath(packagePath);
        if (!isPathValid) {
          stdout.write("The specified package path is not valid. Please enter a new path.\n");
          continue;
        }
      } else {
        print("Invalid input. Please enter a non-empty path.");
        continue;
      }
    }
  }

  // Inform the user that the package path has been successfully configured
  stdout.write("\nThe package path has been successfully configured as: $packagePath\n");
  stdout.write("You can now proceed with using the tool.\n");

  stdout.write("\nPlease select your desired action from the following options:\n");
  stdout.write("A. Add new language entries for internationalization. This action must be performed before adding new entries.\n");
  stdout.write("B. Retrieve the tool's built-in language entries, including JSON files for all supported languages, and save them to your project directory for further customization.\n");
  stdout.write("C. Inject your modified language JSON files for all languages back into the tool, allowing the updated configuration to take effect.\n");
  stdout.write("Please select: (A/B/C) ");

  final option = stdin.readLineSync();

  switch (option) {
    case "A":
    case "a":
      addNewEntries(packagePath!);
      break;
    case "B":
    case "b":
      getOriginalLanguage(packagePath!);
      break;
    case "C":
    case "c":
      addLanguageToBase(packagePath!);
      break;
  }

}


void addNewEntries(String packagePath) async {
  stdout.write("\nPlease select an option:\n");
  stdout.write("1. Read new entries from the 'new_language_entries.txt' file in the project root directory.\n");
  stdout.write("2. Scan the project code to extract new entries and update the 'new_language_entries.txt' file (currently supports Simplified Chinese only).\n");
  stdout.write("Please enter the number of your choice (1/2): ");

  String? userInput = stdin.readLineSync();
  if (userInput == '1') {
    readNewEntriesFromFile(packagePath);
  } else if (userInput == '2') {
    // Ask the user to input the directories to scan, separated by commas
    stdout.write("\nEnter the directories to scan, separated by commas (or press Enter to use the default 'lib' directory): ");
    String? dirsInput = stdin.readLineSync();
    List<String> directoriesToScan = dirsInput?.isNotEmpty == true ? dirsInput!.split(',') : ['lib'];

    // Scan project code and extract new entries
    print("Scanning project code...");
    List<String> extractedEntries = await extractChineseEntries(directoriesToScan);

    // Update the 'new_language_entries.txt' file with the extracted entries
    String userTxtFilePath = './new_language_entries.txt';
    final userTxtFile = File(userTxtFilePath);
    if (!userTxtFile.existsSync()) {
      print("File 'new_language_entries.txt' does not exist. Creating it...");
      await userTxtFile.create();
    }
    final List<String> userEntries = await userTxtFile.readAsLines();
    userEntries.addAll(extractedEntries);
    File(userTxtFilePath).writeAsStringSync(userEntries.toSet().toList().join('\n'));

    // Prompt the user to check and edit the 'new_language_entries.txt' file
    print("\nThe newly extracted Simplified Chinese entries have been added to the 'new_language_entries.txt' file. Please open and review the file. If necessary, make any edits to the entries.");
    stdout.write("Press Enter to continue...");
    stdin.readLineSync();

    // After the user confirms, read new entries from the file
    readNewEntriesFromFile(packagePath);
  } else {
    print("Invalid input. Please enter either 1 or 2.");
  }
}


void addLanguageToBase(String packagePath) async {
  final baseI18NPath = p.join(packagePath, "lib", "language_json");

  final customLanguageDir = Directory("languages");
  final List<FileSystemEntity> files = customLanguageDir.listSync();
  List<String> filePaths = files.map((e) => e.path).toList();
  for (var value in filePaths) {
    final file = File(value);
    final fileName = p.basename(value);
    await file.copy(p.join(baseI18NPath, fileName));
  }

  generateTranslationDartFile(baseI18NPath + Platform.pathSeparator);
}

void getOriginalLanguage(String packagePath) async {
  const fs = LocalFileSystem();

  final languageDirectory = Directory(p.join(packagePath, "lib", "language_json"));
  final templates = languageDirectory.listSync();
  final List<String> templatesPath = templates.map((e) => e.path).toList();

  if(!(fs.isDirectorySync("languages"))){
    Directory("languages").create();
  }

  stdout.write("\n");
  for (var element in templatesPath) {
    final fileName = p.basename(element);
    if(fileName.contains(".i18n.json")){
      stdout.write("Copying: $fileName\n");
      final file = File(element);
      await file.copy(p.join("languages", fileName));
    }
  }

  stdout.write(
      "\nThe language files have been successfully stored in the `languages` directory.\n");
}
