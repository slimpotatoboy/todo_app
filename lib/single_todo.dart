import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class SingleTodo extends StatefulWidget {
  const SingleTodo({Key? key}) : super(key: key);

  @override
  State<SingleTodo> createState() => _SingleTodoState();
}

class _SingleTodoState extends State<SingleTodo> {
  final storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(storage.read("todo1"))),
      body: SafeArea(
        child: Text(storage.read("todo1")),
      ),
    );
  }
}
