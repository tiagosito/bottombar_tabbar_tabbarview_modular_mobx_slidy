import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/schedule/schedule_controller.dart';
import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/schedule/schedule_module.dart';

void main() {
  initModule(ScheduleModule());
  ScheduleController schedule;

  setUp(() {
    schedule = ScheduleModule.to.get<ScheduleController>();
  });

  group('ScheduleController Test', () {
    test("First Test", () {
      expect(schedule, isInstanceOf<ScheduleController>());
    });

    test("Set Value", () {
      expect(schedule.value, equals(0));
      schedule.increment();
      expect(schedule.value, equals(1));
    });
  });
}
