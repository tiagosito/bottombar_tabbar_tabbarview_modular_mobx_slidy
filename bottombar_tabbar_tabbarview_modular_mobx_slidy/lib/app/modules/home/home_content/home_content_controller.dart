import 'package:mobx/mobx.dart';

part 'home_content_controller.g.dart';

class HomeContentController = _HomeContentBase with _$HomeContentController;

abstract class _HomeContentBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
