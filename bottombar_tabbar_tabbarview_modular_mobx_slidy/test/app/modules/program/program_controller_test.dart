import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/program/program_controller.dart';
import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/program/program_module.dart';

void main() {
  initModule(ProgramModule());
  ProgramController program;

  setUp(() {
    program = ProgramModule.to.get<ProgramController>();
  });

  group('ProgramController Test', () {
    test("First Test", () {
      expect(program, isInstanceOf<ProgramController>());
    });

    test("Set Value", () {
      expect(program.value, equals(0));
      program.increment();
      expect(program.value, equals(1));
    });
  });
}
