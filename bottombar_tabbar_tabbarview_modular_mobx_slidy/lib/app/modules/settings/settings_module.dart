import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/settings/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/settings/settings_page.dart';

class SettingsModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
        Bind((i) => SettingsController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SettingsPage()),
      ];

  @override
  Widget get view => SettingsPage();

  static Inject get to => Inject<SettingsModule>.of();
}
