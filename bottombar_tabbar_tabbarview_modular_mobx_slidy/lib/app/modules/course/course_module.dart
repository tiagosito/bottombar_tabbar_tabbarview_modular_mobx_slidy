import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/course/course_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/course/course_page.dart';

class CourseModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
        Bind((i) => CourseController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => CoursePage()),
      ];

  @override
  Widget get view => CoursePage();

  static Inject get to => Inject<CourseModule>.of();
}
