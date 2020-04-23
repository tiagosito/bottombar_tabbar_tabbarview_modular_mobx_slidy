import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/home/home_content/home_content_controller.dart';
import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  HomeContentController homecontent;

  setUp(() {
    homecontent = HomeModule.to.get<HomeContentController>();
  });

  group('HomeContentController Test', () {
    test("First Test", () {
      expect(homecontent, isInstanceOf<HomeContentController>());
    });

    test("Set Value", () {
      expect(homecontent.value, equals(0));
      homecontent.increment();
      expect(homecontent.value, equals(1));
    });
  });
}
