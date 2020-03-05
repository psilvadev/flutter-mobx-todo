// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Todo on _TodoBase, Store {
  final _$descriptionAtom = Atom(name: '_TodoBase.description');

  @override
  String get description {
    _$descriptionAtom.context.enforceReadPolicy(_$descriptionAtom);
    _$descriptionAtom.reportObserved();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.context.conditionallyRunInAction(() {
      super.description = value;
      _$descriptionAtom.reportChanged();
    }, _$descriptionAtom, name: '${_$descriptionAtom.name}_set');
  }

  final _$doneAtom = Atom(name: '_TodoBase.done');

  @override
  bool get done {
    _$doneAtom.context.enforceReadPolicy(_$doneAtom);
    _$doneAtom.reportObserved();
    return super.done;
  }

  @override
  set done(bool value) {
    _$doneAtom.context.conditionallyRunInAction(() {
      super.done = value;
      _$doneAtom.reportChanged();
    }, _$doneAtom, name: '${_$doneAtom.name}_set');
  }

  final _$_TodoBaseActionController = ActionController(name: '_TodoBase');

  @override
  void setDescription(String description) {
    final _$actionInfo = _$_TodoBaseActionController.startAction();
    try {
      return super.setDescription(description);
    } finally {
      _$_TodoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDone(bool done) {
    final _$actionInfo = _$_TodoBaseActionController.startAction();
    try {
      return super.setDone(done);
    } finally {
      _$_TodoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'description: ${description.toString()},done: ${done.toString()}';
    return '{$string}';
  }
}
