import 'package:mobx/mobx.dart';

part 'course_controller.g.dart';

class CourseController = _CourseBase with _$CourseController;

abstract class _CourseBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
