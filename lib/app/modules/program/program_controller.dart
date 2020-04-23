import 'package:mobx/mobx.dart';

part 'program_controller.g.dart';

class ProgramController = _ProgramBase with _$ProgramController;

abstract class _ProgramBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
