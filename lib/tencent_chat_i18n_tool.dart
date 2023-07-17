library tencent_chat_i18n_tool;

import 'package:flutter/widgets.dart';
import 'package:tencent_chat_i18n_tool/tools/i18n_tool.dart';

export 'package:tencent_chat_i18n_tool/tools/i18n_tool.dart';
export 'package:tencent_chat_i18n_tool/language_json/strings.g.dart';

String TIM_t(String value) {
  final I18nUtils ttBuild = I18nUtils();
  return ttBuild.imt_origin(value);
}

Function TIM_t_para(String template, String value) {
  final I18nUtils ttBuild = I18nUtils();
  return ttBuild.imt_para_origin(template, value);
}

String TIM_getCurrentDeviceLocale() {
  return I18nUtils.deviceLocaleStored ??
      WidgetsBinding.instance.window.locale.toLanguageTag();
}