import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/theme_change_icon.dart';
import '../Controller/todo_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TodoController todoController = Get.put(TodoController());

  final TextEditingController textController = TextEditingController();
  final TextEditingController editController = TextEditingController();

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          controller: textController,
          decoration: const InputDecoration(
            hintText: "Create a new task",
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              todoController.addTodo(textController.text);
              Navigator.of(context).pop();
              textController.clear();
            },
            child: const Text("Save"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              textController.clear();
            },
            child: const Text("Cancel"),
          ),
        ],
      ),
    );
  }

  void editTask(BuildContext context, int index) {
    editController.text = todoController.todos[index].title;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          controller: editController,
          decoration: const InputDecoration(
            hintText: "Edit Task",
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              String updatedTaskName = editController.text.trim();
              if (updatedTaskName.isNotEmpty) {
                todoController.editTodoTitle(index, updatedTaskName);
                Navigator.of(context).pop();
                editController.clear();
              }
            },
            child: const Text("Save"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              editController.clear();
            },
            child: const Text("Cancel"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          themeAnimatedIcon(),
        ],
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text("T O D O"),
        centerTitle: true,
      ),
      body: GetBuilder<TodoController>(
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 100),
              itemCount: controller.todos.length,
              itemBuilder: (context, index) {
                final todo = controller.todos[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      color: todo.isDone
                          ? const Color(0xfffcdc5c)
                          : Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      onLongPress: () {
                        editTask(context, index);
                      },
                      title: Text(
                        todo.title,
                        style: TextStyle(
                          decorationColor: todo.isDone
                              ? Colors.black
                              : Theme.of(context).colorScheme.onSurface,
                          decorationThickness: 3,
                          color: todo.isDone
                              ? Colors.black
                              : Theme.of(context).colorScheme.onSurface,
                          decoration: todo.isDone
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                      leading: Checkbox(
                        checkColor: todo.isDone ? Colors.black : Colors.white,
                        activeColor: const Color(0xfffcdc5c),
                        value: todo.isDone,
                        onChanged: (value) {
                          todoController.toggleTodoStatus(index);
                        },
                      ),
                      trailing: CupertinoButton(
                        padding: EdgeInsets.zero,
                        child: Icon(
                          Icons.delete,
                          color: todo.isDone
                              ? Colors.black
                              : Theme.of(context).colorScheme.onSurface,
                        ),
                        onPressed: () {
                          todoController.deleteTodo(index);
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xfffcdc5c),
        onPressed: createNewTask,
        child: Icon(
          CupertinoIcons.add,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }
}
