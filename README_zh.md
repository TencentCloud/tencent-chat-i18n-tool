# 腾讯云IM 国际化（i18n）工具

欢迎使用[Tencent Cloud Chat](https://www.tencentcloud.com/zh/products/im?from=pub)国际化（i18n）工具，这是由[Tencent Cloud Chat](https://www.tencentcloud.com/zh/products/im?from=pub)团队开发的专用工具包。此工具包为我们的[Chat UIKit](https://www.tencentcloud.com/document/product/1047/50059)以及客户的应用程序提供了轻量级、强大且易于开发的国际化语言工具。

它基于 `fast_i18n` 进行了进一步的开发和封装，以更好地满足我们的需求。我们对 `fast_i18n` 的出色工作和宝贵贡献表示衷心的感谢。

借助此工具包，您可以轻松管理多语言翻译条目、添加新条目、修改现有条目，甚至为您的项目集成新语言。它极大地简化了为聊天应用程序以及其他具有国际化需求的应用程序创建多语言用户体验的过程。

![示例图片](https://qcloudimg.tencent-cloud.cn/raw/cfdebbe4f935fe73bc8fafd205faa4a9.png)

## 功能

- 以简单有序的方式管理翻译条目。
- 无缝添加新语言条目或修改现有条目。
- 默认支持英文、中文(简体、繁体)、日语和韩语，根据需要灵活地扩展对其他语言的支持。
- 与腾讯云IM UIKit 或其他项目平滑集成。
- 支持第三方开发者为其应用实现国际化。
- 全面的文档和支持。
- 基于`fast_i18n`进行了进一步开发，为我们的需求和改进的使用量身定制。

## 开始使用

在使用腾讯云IM i18n 工具之前，您需要将工具包仓库 fork 到本地机器，并在项目的`pubspec.yaml`文件中设置工具包路径。请按照以下步骤操作：

1. 访问本工具包的 GitHub 仓库：[https://github.com/TencentCloud/tencent-chat-i18n-tool](https://github.com/TencentCloud/tencent-chat-i18n-tool)。

2. 点击仓库页面右上角的 “Fork” 按钮。这将在您的 GitHub 帐户下创建一个仓库副本。

3. 将 fork 的仓库克隆到本地机器上的一个目录中。您可以使用以下 Git 命令执行此操作：

```
git clone https://github.com/<your-username>/tencent-chat-i18n-tool.git
```

将`<your-username>`替换为您的GitHub用户名。

4. 在您项目的`pubspec.yaml`文件中，将fork的仓库的本地路径添加到`dependency_overrides`部分：

```yaml
dependency_overrides:
  tencent_chat_i18n_tool:
    path: /path/to/your/local/repository
```

将`/path/to/your/local/repository`替换为本地机器上克隆的仓库的实际路径。

现在，可以通过在您项目的根目录中运行主脚本来使用腾讯云IM i18n 工具。

## 在您的项目中添加新词条

要在项目中添加新词条，您需要使用以下方法包装词条：

- 对于不带参数的词条，请使用`TIM_t("词条")`方法。例如：`TIM_t("会话")`。
- 对于带参数的词条，请使用`TIM_t_para("模板：{{option}}", "模板：$option")(option: option)`方法。`TIM_t_para`支持从`option1`到`option10`的参数。例如：`TIM_t_para("服务器错误：{{option8}}", "服务器错误：$option8")(option8: $option8)`（其中`option8`是参数名）。

在项目中应用这些方法可确保词条在多语言支持下被正确处理。

## 使用方法

按照以下步骤使用腾讯云IM i18n工具：

1. 运行工具 `dart run tencent_chat_i18n_tool`。默认情况下，它将读取项目的`pubspec.yaml`文件中指定的本地工具包路径。如果您想使用其他路径，可以在提示时输入。

2. 选择选项A（A. Add new language entries for internationalization. This action must be performed before adding new entries.），新增原始语言词条。工具将提供两个方式来添加新词条：

    - 选项1（1. Read new entries from the 'new_language_entries.txt' file in the project root directory.）：从项目根目录中的 `new_language_entries.txt` 文件中读取新词条。您可以手动将想要添加的词条写入此文件，然后选择此选项将它们添加到工具中。

    - 选项2（2. Scan the project code to extract new entries and update the 'new_language_entries.txt' file (currently supports Simplified Chinese only).）：扫描项目代码以提取新词条并更新 `new_language_entries.txt` 文件（目前仅支持中文）。选择此选项后，工具将自动扫描指定目录（如`lib`）中的 Dart 文件，并从中提取中文词条。此时，打开 `new_language_entries.txt` 文件并查看提取的条目。如有必要，请对条目进行编辑。

3. 再次运行工具并选择选项B（B. Retrieve the tool's built-in language entries, including JSON files for all supported languages, and save them to your project directory for further customization.）。工具将把所有支持语言的内置语言条目保存到项目目录中的 JSON 文件中。

4. 打开位于 `languages` 目录中的 JSON 文件，并翻译每个文件底部的新条目。此时，您还可以根据键值定位特定条目，并修改各语言条目库中的翻译文本。但是，请不要删除不需要的词条。

5. （可选）如果您想添加对新语言的支持，请按照以下步骤操作：

   - 打开项目中的 `languages` 目录。
   - 选择您熟悉的语言文件并复制一份。
   - 将复制的文件重命名为 `strings_${ISO_LANGUAGE_CODE}.i18n.json`，其中 `${ISO_LANGUAGE_CODE}` 是您要添加的新语言的 ISO 代码（例如，对于法语，文件名为`strings_fr.i18n.json`）。
   - 将新文件中的所有条目翻译成相应的语言。

6. 再次运行工具并选择选项C（C. Inject your modified language JSON files for all languages back into the tool, allowing the updated configuration to take effect.）将您修改的语言JSON文件注入回工具。现在，更新后的配置将在您的项目中生效。

完成这些步骤后，您所做的更改将应用于腾讯云IM i18n 工具的本地副本。如果您想与他人合作或共享更改，可以将修改后的工具包源代码推送到内部 Pub 服务器或 Git 仓库。要在项目中使用更新后的工具包作为依赖项，只需在`pubspec.yaml`文件中更新工具包路径，使其指向在线仓库：

例如： 
```yaml
dependency_overrides:
  tencent_chat_i18n_tool:
    git:
      url: https://github.com/<your-username>/tencent-chat-i18n-tool.git
```

## 后续更新说明

本 `Tencent Cloud Chat i18n` 工具包将与 [`Tencent Cloud Chat UIKit`](https://pub.dev/packages/tencent_cloud_chat_uikit) 同步更新，以保持版本一致性。在每次更新时，我们会将 `Chat UIKit` 新版本中的新增词条添加到此工具包中。所有更新都将在 `pub.dev` 和 GitHub 仓库中同步发布。

如果您已将此工具包 fork 至自己的 GitHub 帐户，请注意在每 次`Chat UIKit` 更新时，您需要通过 `pull upstream` 操作将本工具包的最新词条库同步更新至您 fork 的版本中。这样可以确保您的 fork 版本既包含您自己添加或修改的词条，也包含我们在每个版本中新增的词条。在合并代码和解决冲突时，请确保各个 JSON 词条库保持完整。

若合并后的 JSON 文件无法直接使用，您可以按照上文步骤 7 的指示重新运行程序，并选择 C 选项以使更新生效。请注意，在执行 C 选项之前，需要确保每个语言的词条 JSON 都是完整且无误的。

以下是一个`pull upstream`的 Git 操作示例：

1. 首先，在您的本地仓库中添加上游（upstream）远程仓库：

```
git remote add upstream https://github.com/TencentCloud/tencent-chat-i18n-tool.git
```

2. 拉取上游仓库的最新更改：

```
git fetch upstream
```

3. 将您的本地仓库切换到要更新的分支（例如`main`或`master`）：

```
git checkout main
```

4. 将上游仓库的更改合并到您的本地仓库：

```
git merge upstream/main
```

5. 如果有冲突，请在编辑器中解决它们，确保各个JSON词条库是完整的。

6. 提交解决冲突后的更改：

```
git add .
git commit -m "Merge upstream changes and resolve conflicts"
```

7. 将更改推送到您的远程仓库：

```
git push origin main
```

现在，您的fork版本已经包含了最新的词条库。如果需要让更新生效，请按照上文中的步骤7重新运行程序，并选择C选项。