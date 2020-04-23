import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/profile/profile_page.dart';

class ProfileModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
        Bind((i) => ProfileController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ProfilePage()),
      ];

  @override
  Widget get view => ProfilePage();

  static Inject get to => Inject<ProfileModule>.of();
}
