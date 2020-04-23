import 'package:mobx/mobx.dart';

part 'schedule_controller.g.dart';

class ScheduleController = _ScheduleBase with _$ScheduleController;

abstract class _ScheduleBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
