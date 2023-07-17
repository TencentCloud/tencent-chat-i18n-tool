
# Tencent Cloud Chat Internationalization (i18n) Tool

Welcome to the [Tencent Cloud Chat](https://www.tencentcloud.com/zh/products/im?from=pub) Internationalization (i18n) Tool, a dedicated package developed by [Tencent Cloud Chat](https://www.tencentcloud.com/zh/products/im?from=pub) team. This package offers a light, powerful and developer-friendly internationalization language tool tailored for our [Chat UIKit](https://www.tencentcloud.com/document/product/1047/50059) and the applications from our customers. 

It is based on `fast_i18n` and has been further developed and encapsulated to better suit our needs. We would like to express our heartfelt gratitude to the `fast_i18n` for their outstanding work and invaluable contribution.

With this package, you can easily manage multi-language translation entries, add new entries, modify existing ones, and even integrate new languages for your projects. It greatly simplifies the process of creating a multilingual user experience for chat applications, as well as other applications with internationalization needs.

![Sample Image](https://qcloudimg.tencent-cloud.cn/raw/cfdebbe4f935fe73bc8fafd205faa4a9.png)

## Features

- Manage translation entries in an easy and organized manner.
- Seamlessly add new language entries or modify existing ones.
- Default support for English, Chinese, Japanese, and Korean, with the flexibility to extend support for additional languages as needed.
- Integrates smoothly with Tencent Cloud Chat UIKit or other projects.
- Supports third-party developers in implementing internationalization for their apps.
- Comprehensive documentation and support.
- Based on `fast_i18n`, further developed, and tailored for our needs and improved usage.

## Getting Started

Before using the Tencent Cloud Chat i18n Tool, you need to fork the package repository to your local machine and set up the package path in your project's `pubspec.yaml` file. Follow these steps:

1. Visit the package's GitHub repository at [https://github.com/TencentCloud/tencent-chat-i18n-tool](https://github.com/TencentCloud/tencent-chat-i18n-tool).

2. Click the "Fork" button in the top-right corner of the repository page. This will create a copy of the repository under your GitHub account.

3. Clone the forked repository to a directory of your choice on your local machine. You can do this using the following Git command:

```
git clone https://github.com/<your-username>/tencent-chat-i18n-tool.git
```

Replace `<your-username>` with your GitHub username.

4. In your project's `pubspec.yaml` file, add the local path to your forked repository under the `dependency_overrides` section:

```yaml
dependency_overrides:
  tencent_chat_i18n_tool:
    path: /path/to/your/local/repository
```

Replace `/path/to/your/local/repository` with the actual path to the cloned repository on your local machine.

Now you can use the Tencent Cloud Chat i18n Tool by running the main script in the cloned directory.

## Adding New Entries in Your Project

To add new entries in your project, you need to wrap the entries using the following methods:

- For entries without parameters, use the `TIM_t("Entry")` method. For example: `TIM_t("Hello")`.
- For entries with parameters, use the `TIM_t_para("Template: {{option}}", "Template: $option")(option: option)` method. `TIM_t_para` supports parameters from `option1` to `option10`. For example: `TIM_t_para("Server error: {{option8}}", "Server error: $option8")(option8: $option8)` (where `option8` is the parameter name).

Applying these methods in your project ensures that the entries are correctly handled with multi-language support.

## Usage - Customization

Follow these steps to use the Tencent Cloud Chat i18n Tool:

1. Run the tool `dart run tencent_chat_i18n_tool`. By default, it will read the local package path specified in your project's `pubspec.yaml` file. If you want to use a different path, you can enter it when prompted.

2. Select option A (A. Add new language entries for internationalization. This action must be performed before adding new entries.) to add new language entries. The tool will provide two ways to add new entries:

    - Option 1 (1. Read new entries from the 'new_language_entries.txt' file in the project root directory.): Read new entries from the 'new_language_entries.txt' file in your project's root directory. You can manually add the entries you want to include in this file and then choose this option to add them to the tool.

    - Option 2 (2. Scan the project code to extract new entries and update the 'new_language_entries.txt' file (currently supports Simplified Chinese only).): Scan the project code to extract new entries and update the 'new_language_entries.txt' file (currently supports Chinese only). When you choose this option, the tool will automatically scan the specified directories (e.g., 'lib') in your Dart files and extract Chinese entries from them. Then, open the `new_language_entries.txt` file and review the extracted entries. If necessary, make any edits to the entries.

3. Run the tool again and select option B. The tool will save the built-in language entries in JSON files to your project directory.

4. Open the JSON files located in the `languages` directory and translate the new entries at the bottom of each file.

5. (Optional) If you want to add support for a new language, follow these steps:

   - Navigate to the `languages` directory in your project.
   - Choose a language file that you are familiar with and make a copy of it.
   - Rename the copied file to `strings_${ISO_LANGUAGE_CODE}.i18n.json`, where `${ISO_LANGUAGE_CODE}` is the ISO code of the new language you want to add (e.g., `strings_fr.i18n.json` for French).
   - Translate all the entries in the new file to the corresponding language.

6. Run the tool again and select option C (C. Inject your modified language JSON files for all languages back into the tool, allowing the updated configuration to take effect.) to inject your modified language JSON files back into the tool. The updated configuration will now take effect in your project.

After completing these steps, the changes you made will be applied to the local copy of the Tencent Cloud Chat i18n Tool. If you want to collaborate with others or share your changes, you can push the modified package source code to your internal Pub server or Git repository. To use the updated package as a dependency in your project, simply update the package path in your `pubspec.yaml` file to point to the online repository:

Like: 

```yaml
dependency_overrides:
  tencent_chat_i18n_tool:
    git:
      url: https://github.com/<your-username>/tencent-chat-i18n-tool.git
```

Replace `<your-username>` with your GitHub username.

## Update Instructions

The Tencent Cloud Chat i18n package will be updated synchronously with the Tencent Cloud Chat UIKit to maintain version consistency. With each update, we will add new entries from the latest version of Chat UIKit to this package. All updates will be published synchronously on pub.dev and the GitHub repository.

If you have forked this package to your GitHub account, please note that you need to synchronize the latest entry library of this package to your forked version via `pull upstream` operation whenever the Chat UIKit is updated. This ensures that your forked version contains both the entries you added or modified and the new entries we added with each version. When merging the code and resolving conflicts, please make sure that each JSON entry library remains intact.

If the merged JSON files cannot be used directly, you can follow the instructions in step 7 above to rerun the program and select option C to apply the updates. Please note that before executing option C, you need to ensure that each language entry JSON is complete and error-free.

Here's a step-by-step example of a `pull upstream` Git operation:

1. First, add the upstream remote repository to your local repository:

```
git remote add upstream https://github.com/TencentCloud/tencent-chat-i18n-tool.git
```

2. Fetch the latest changes from the upstream repository:

```
git fetch upstream
```

3. Switch your local repository to the branch you want to update (e.g., `main` or `master`):

```
git checkout main
```

4. Merge the changes from the upstream repository into your local repository:

```
git merge upstream/main
```

5. If there are any conflicts, resolve them in your editor, ensuring that each JSON entry library is intact.

6. Commit the changes after resolving conflicts:

```
git add .
git commit -m "Merge upstream changes and resolve conflicts"
```

7. Push the changes to your remote repository:

```
git push origin main
```

Now, your forked version includes the latest entry library. If you need to apply the updates, follow the instructions in step 7 above to rerun the program and select option C.

We hope you find the Tencent Cloud Chat i18n Tool useful for managing multi-language support in your projects. If you have any questions, suggestions, or feedback, please feel free to reach out to us. Happy coding!
