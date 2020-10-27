import 'dart:convert';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

class I18nLocalizations {
  var _locales = <String, dynamic>{};

  Locale currentLocale() =>
      Localizations.localeOf(Modular.navigatorKey.currentContext);

  Future<String> loadStringByPath(String path) =>
      rootBundle.loadString("lang/$path");

  Future<void> load() async {
    final locale = currentLocale();
    final path = "$locale.json";
    try {
      final json = await loadStringByPath(path);
      _locales = Map.from(jsonDecode(json));
    } catch (e) {
      final error =
          "ERROR i18n LOAD $path!\n1- Verify if you create folder lang and add json.\n2- Verify if you add in pubspec.yaml assets: ... - lang/";
      print(error);
      throw ErrorHint(error);
    }
    try {
      await startRemoteConfig(locale);
    } catch (e) {
      final error =
          "ERROR i18n REMOTE CONFIG \n1- Verify add GoogleService-Info.plist for iOS and GoogleService.json for android";
      print(error);
      throw ErrorHint(error);
    }
    return;
  }

  Future<void> startRemoteConfig(Locale locale) async {
    try {
      final instance = await RemoteConfig.instance;
      await instance.setDefaults(_locales);
      await instance.fetch();
      await instance.activateFetched();
      final value = instance.getString(locale.toString());
      _locales = jsonDecode(value);
      return;
    } catch (e) {
      final error =
          "ERROR i18n GET VALUE REMOTE CONFIG \n1- Verify if is correct locale create in REMOTE CONFIG";
    }
  }

  String getValue(String key) {
    final module = Modular.to.modulePath;
    if (module != null) {
      return _locales[module][key];
    } else {
      return _locales[key];
    }
  }
}
