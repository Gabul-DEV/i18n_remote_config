import 'package:flutter_modular/flutter_modular.dart';
import 'package:i18n_remote_config/i18n_remote_config.dart';

class I18nString {}

extension I18nStringExt on String {
  String i18n([List<String> params]) {
    final key = this;
    final localization = Modular.get<I18nLocalizations>();
    var value = localization.getValue(key);
    if (params != null) {
      for (var i = 0; i < params.length; i++) {
        value = value.replaceAll("\$$i", params[i]);
      }
    }
    return value;
  }
}
