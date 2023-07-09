import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_app/single_todo.dart';

void main() async {
  await GetStorage.init();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final storage = GetStorage();

  final TextEditingController todoTextController = TextEditingController();

  List<String> todos = [];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
                  // onChanged: (value) {
                  //   todoTextController.text = value;
                  //   setState(() {});
                  // },
                ),
                FilledButton(
                  onPressed: () {
                    todos.add(todoTextController.text);
                    storage.write("todo1", todoTextController.text);
                    todoTextController.text = "";
                    Get.snackbar("Success", "Todo List Added",
                        backgroundColor: Colors.green.shade400);
                    setState(() {});
                  },
                  child: Text("Add"),
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: todos.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => SingleTodo());
                        },
                        child: Container(
                          color: Colors.grey.shade200,
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: false,
                                    onChanged: (val) {},
                                  ),
                                  Text(todos[index]),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.close),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
