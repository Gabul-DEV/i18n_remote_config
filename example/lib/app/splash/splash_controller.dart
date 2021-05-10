import 'package:flutter_modular/flutter_modular.dart';
import 'package:i18n_remote_config/i18n_remote_config.dart';

import 'package:mobx/mobx.dart';
import 'splash_state.dart';
export 'splash_state.dart';
part 'splash_controller.g.dart';

class SplashController = _SplashBase with _$SplashController;

abstract class _SplashBase extends Disposable with Store {
  late ReactionDisposer _disposer;

  @observable
  SplashState state = SplashState.empty;

  _SplashBase() {
    loadLocalizations();
    _disposer = when((_) => state == SplashState.success, () {
      Modular.to.pushReplacementNamed("/home");
    });
  }

  @action
  Future<void> loadLocalizations() async {
    state = SplashState.loading;
    try {
      await I18nLocalizations.instance.load();
      state = SplashState.success;
    } catch (e) {
      print(e);
      state = SplashState.failure;
    }
  }

  void dispose() {
    _disposer();
  }
}
