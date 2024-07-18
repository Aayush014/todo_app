import 'package:get/get.dart';
import '../Modal/todo_modal.dart';

class TodoController extends GetxController {
  var todos = <Todo>[].obs;

  void addTodo(String title) {
    todos.add(Todo(
      title: title,
    ));
    update();
  }

  void toggleTodoStatus(int index) {
    var todo = todos[index];
    todo.isDone = !todo.isDone;
    todos[index] = todo;
    update();
  }

  void deleteTodo(int index) {
    todos.removeAt(index);
    update();
  }

  void editTodoTitle(int index, String newTitle) {
    var todo = todos[index];
    todo.title = newTitle;
    todos[index] = todo;
    update();
  }
}
