import 'package:mobx/mobx.dart';

part 'profile_controller.g.dart';

class ProfileController = _ProfileBase with _$ProfileController;

abstract class _ProfileBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
