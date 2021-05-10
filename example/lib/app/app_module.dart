import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';

import 'modules/home/home_module.dart';
import 'splash/splash_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: SplashModule()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
