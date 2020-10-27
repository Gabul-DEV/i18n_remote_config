import 'splash_controller.dart';
import 'splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController(i18localizations: i())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          "/",
          child: (context, args) => SplashPage(),
        )
      ];

  static Inject get to => Inject<SplashModule>.of();
}
