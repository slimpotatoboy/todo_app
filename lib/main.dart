import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final TextEditingController todoTextController = TextEditingController();

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
                TextFormField(
                  controller: todoTextController,
                  onChanged: (value) {
                    todoTextController.text = value;
                    setState(() {});
                  },
                ),
                FilledButton(
                  onPressed: () {},
                  child: Text("Add"),
                ),
                Container(
                  color: Colors.grey.shade200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (val) {},
                          ),
                          Text(todoTextController.text),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.close),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
