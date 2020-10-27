import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'splash_controller.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Observer(builder: (_) {
          switch (controller.state) {
            case SplashState.empty:
              return Center(child: Text("Iniciando o aplicativo..."));
              break;
            case SplashState.loading:
              return Center(child: Text("Configurando o ambiente..."));
              break;
            case SplashState.success:
              return Center(child: Text("Seja bem vindo"));
              break;
            case SplashState.failure:
              return Center(
                child: Text(
                    "Aconteceu um erro, já estamos resolvendo. Aguarde..."),
              );
              break;
            default:
              return Container();
          }
        }));
  }
}
