// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:tencent_chat_i18n_tool/language_json/strings.g.dart';
import 'package:tencent_chat_i18n_tool/tools/hash_key.dart';

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

class I18nUtils {
  static I18nUtils? _instance;

  I18nUtils._internal([String? language]) {
    _init(language);
  }

  factory I18nUtils([BuildContext? context, String? language]) {
    if (language != null) {
      _instance = I18nUtils._internal(language);
    } else {
      _instance ??= I18nUtils._internal(language);
    }
    return _instance!;
  }

  RegExp expForParameterOut = RegExp(r"{{[^]+}}");
  RegExp expForParameter = RegExp(r"(?:\{{)[^}]*(?=\}})");
  static String? deviceLocaleStored;
  late final t;

  void _init([String? language]) {
    if (language != null) {
      t = findDeviceLocale(language, true).build();
    } else {
      try {
        t = findDeviceLocale(null, true).build();
      } catch (e) {
        t = AppLocale.en.build();
        print("errorInLanguage ${e.toString()}");
      }
    }
  }

  // Usage update: using `TIM_t` directly instead of `ttBuild.imt`
  String imt_origin(String value) {
    String currentKey = HashKey.getHashKey(value);
    print(currentKey);
    String translatedValue = t[currentKey] ?? value;
    return translatedValue;
  }

  // Usage update: using `TIM_t_para` directly instead of `ttBuild.imt_para`
  Function imt_para_origin(String template, String value) {
    // Usage：TIM_t_para("已选：{{addType}}",'已选：$addType')(addType: addType)
    final originTemplate = template.replaceAllMapped(
        expForParameterOut, (Match m) => replaceParameterForTemplate(m));
    final originKey = HashKey.getHashKey(originTemplate);
    print(originTemplate + originKey);
    final Function translatedValueFunction = t[originKey] ??
        ({
          Object? option1,
          Object? option2,
          Object? option3,
          Object? option4,
          Object? option5,
          Object? option6,
          Object? option7,
          Object? option8,
          Object? option9,
          Object? option10,
          Object? option11,
          Object? option12,
          Object? option13,
          Object? option14,
          Object? option15,
          Object? option16,
          Object? option17,
          Object? option18,
          Object? option19,
          Object? option20,
        }) {
          return value;
        };
    return translatedValueFunction;
  }

  String replaceParameterForTemplate(Match value) {
    final String? parameter = expForParameter.stringMatch(value[0] ?? "");
    return "\$$parameter".replaceAll("{", "");
  }

  static String getKeyFromMap(Map map, String key) {
    String currentKey = "";
    for (String tempKey in map.keys) {
      if (map[tempKey] == key) {
        currentKey = tempKey;
        break;
      }
    }
    return currentKey;
  }

  static Map revertMap(Map map) {
    final Map<String, String> newMap = {};
    for (String tempKey in map.keys) {
      newMap[map[tempKey]] = tempKey;
    }
    return newMap;
  }

  String getCurrentLanguage(BuildContext context) {
    return Localizations.localeOf(context).languageCode;
  }

  static AppLocale findDeviceLocale([String? locale, bool? isStore]) {
    final isStorePara = isStore ?? false;
    final String? deviceLocale =
        locale ?? WidgetsBinding.instance.window.locale.toLanguageTag();
    if (isStorePara) {
      deviceLocaleStored = deviceLocale;
    }
    if (deviceLocale != null) {
      final typedLocale = _selectLocale(deviceLocale);
      if (typedLocale != null) {
        return typedLocale;
      }
    }
    return AppLocale.en;
  }

  static final _localeRegex =
      RegExp(r'^([a-z]{2,8})?([_-]([A-Za-z]{4}))?([_-]?([A-Z]{2}|[0-9]{3}))?$');

  static AppLocale? _selectLocale(String localeRaw) {
    final match = _localeRegex.firstMatch(localeRaw);
    AppLocale? selected;
    if (match != null) {
      final language = match.group(1);
      final country = match.group(5);
      final script = match.group(3);
      // match exactly
      selected = AppLocale.values.cast<AppLocale?>().firstWhere(
          (supported) =>
              supported?.languageTag == localeRaw.replaceAll('_', '-'),
          orElse: () => null);

      if (selected == null && script != null) {
        // match script
        selected = AppLocale.values.cast<AppLocale?>().firstWhere(
            (supported) => supported?.languageTag.contains(script) == true,
            orElse: () => null);
      }

      if (selected == null && language != null) {
        // match language
        selected = AppLocale.values.cast<AppLocale?>().firstWhere(
            (supported) => supported?.languageTag.startsWith(language) == true,
            orElse: () => null);
      }

      if (selected == null && country != null) {
        // match country
        selected = AppLocale.values.cast<AppLocale?>().firstWhere(
            (supported) => supported?.languageTag.contains(country) == true,
            orElse: () => null);
      }
    }
    return selected;
  }
}
