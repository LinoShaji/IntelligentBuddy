import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    TextEditingController TextFieldController = TextEditingController();
    final List<Todo> _todos = <Todo>[];
    return  Scaffold(body: ListView(children: []),);
  }
}

class Todo {
  Todo({required this.name, required this.checked});
  final String name;
  bool checked;
}