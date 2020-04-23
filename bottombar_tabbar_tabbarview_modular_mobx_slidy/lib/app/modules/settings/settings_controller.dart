import 'package:mobx/mobx.dart';

part 'settings_controller.g.dart';

class SettingsController = _SettingsBase with _$SettingsController;

abstract class _SettingsBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
