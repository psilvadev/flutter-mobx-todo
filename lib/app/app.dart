import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/app/pages/todo_controller.dart';
import 'package:todo/app/pages/todo_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<TodoController>(create: (_) => TodoController()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TodoPage(),
      ),
    );
  }
}
