import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Todo App"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(),
                FilledButton(
                  onPressed: () {},
                  child: Text("Add"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
