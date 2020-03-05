import 'package:mobx/mobx.dart';
import 'package:todo/app/models/todo_model.dart';
import 'package:todo/app/utils/string_utils.dart';

part 'todo_controller.g.dart';

class TodoController = _TodoControllerBase with _$TodoController;

abstract class _TodoControllerBase with Store {
  @observable
  var todos = ObservableList<Todo>();

  @action
  add(String description) {
    if (StringUtils.isEmpty(description)) {
      return;
    }

    var todo = Todo(
      description: description,
      done: false,
    );

    todos.add(todo);
  }
}
