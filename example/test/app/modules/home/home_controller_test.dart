import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:example/app/modules/home/home_controller.dart';
import 'package:example/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  late HomeController home;

  setUp(() {
    home = Modular.get<HomeController>();
  });

  group('HomeController Test', () {
    test("First Test", () {
      expect(home, isInstanceOf<HomeController>());
    });

    test("Set Value", () {
      expect(home.value, equals(0));
      home.increment();
      expect(home.value, equals(1));
    });
  });
}
