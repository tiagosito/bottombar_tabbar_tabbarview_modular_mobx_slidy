import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/course/course_controller.dart';
import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/course/course_module.dart';

void main() {
  initModule(CourseModule());
  CourseController course;

  setUp(() {
    course = CourseModule.to.get<CourseController>();
  });

  group('CourseController Test', () {
    test("First Test", () {
      expect(course, isInstanceOf<CourseController>());
    });

    test("Set Value", () {
      expect(course.value, equals(0));
      course.increment();
      expect(course.value, equals(1));
    });
  });
}
