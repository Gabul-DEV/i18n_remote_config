// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplashController on _SplashBase, Store {
  final _$stateAtom = Atom(name: '_SplashBase.state');

  @override
  SplashState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(SplashState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$loadLocalizationsAsyncAction =
      AsyncAction('_SplashBase.loadLocalizations');

  @override
  Future<void> loadLocalizations() {
    return _$loadLocalizationsAsyncAction.run(() => super.loadLocalizations());
  }

  @override
  String toString() {
    return '''
state: ${state}
    ''';
  }
}
