import 'package:mobx/mobx.dart';

part 'todo_model.g.dart';

class Todo = _TodoBase with _$Todo;

abstract class _TodoBase with Store {
  @observable
  String description;

  @observable
  bool done;

  _TodoBase({
    this.description,
    this.done,
  });

  @action
  void setDescription(String description) {
    this.description = description;
  }

  @action
  void setDone(bool done) {
    this.done = done;
  }
}
