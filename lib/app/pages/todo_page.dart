import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:todo/app/pages/todo_controller.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    final todoController = Provider.of<TodoController>(context);
    final textFieldController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('My Tasks'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Observer(
              builder: (_) => ListView.builder(
                itemCount: todoController.todos.length,
                itemBuilder: (context, index) {
                  final todo = todoController.todos[index];

                  return Observer(
                    builder: (_) => CheckboxListTile(
                      value: todo.done,
                      title: Text(todo.description),
                      onChanged: todo.setDone,
                    ),
                  );
                },
              ),
            ),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Flexible(
                child: TextField(
                  controller: textFieldController,
                  decoration: InputDecoration(
                    hintText: 'Add task',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    var text = textFieldController.text;
                    var currentFocus = FocusScope.of(context);

                    todoController.add(text);

                    textFieldController.clear();
                    currentFocus.unfocus();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
