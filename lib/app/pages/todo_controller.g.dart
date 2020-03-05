// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoController on _TodoControllerBase, Store {
  final _$todosAtom = Atom(name: '_TodoControllerBase.todos');

  @override
  ObservableList<Todo> get todos {
    _$todosAtom.context.enforceReadPolicy(_$todosAtom);
    _$todosAtom.reportObserved();
    return super.todos;
  }

  @override
  set todos(ObservableList<Todo> value) {
    _$todosAtom.context.conditionallyRunInAction(() {
      super.todos = value;
      _$todosAtom.reportChanged();
    }, _$todosAtom, name: '${_$todosAtom.name}_set');
  }

  final _$_TodoControllerBaseActionController =
      ActionController(name: '_TodoControllerBase');

  @override
  dynamic add(String description) {
    final _$actionInfo = _$_TodoControllerBaseActionController.startAction();
    try {
      return super.add(description);
    } finally {
      _$_TodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'todos: ${todos.toString()}';
    return '{$string}';
  }
}
