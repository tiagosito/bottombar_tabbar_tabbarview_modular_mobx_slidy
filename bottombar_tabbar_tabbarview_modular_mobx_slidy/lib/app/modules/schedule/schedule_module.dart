import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/schedule/schedule_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/schedule/schedule_page.dart';

class ScheduleModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
        Bind((i) => ScheduleController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SchedulePage()),
      ];

  @override
  Widget get view => SchedulePage();

  static Inject get to => Inject<ScheduleModule>.of();
}
