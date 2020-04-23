import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/program/program_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/program/program_page.dart';

class ProgramModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
        Bind((i) => ProgramController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ProgramPage()),
      ];

  @override
  Widget get view => ProgramPage();

  static Inject get to => Inject<ProgramModule>.of();
}
