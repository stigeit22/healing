import 'package:flutter/cupertino.dart';
import 'package:healing_project/DetailPage/Componen/Ulasan/Model/todo_Model.dart';

class TodoListProvider with ChangeNotifier {
  List<TodoModel> _todoList = [];
  List<TodoModel> get todoList => _todoList;
  void addTodo(TodoModel todo) {
    _todoList.add(todo);
    notifyListeners();
  }

  void removeTodo(TodoModel todo) {
    _todoList = _todoList.where((item) => item.id != todo.id).toList();
    notifyListeners();
  }

  void updateTodo(TodoModel todo) {
    _todoList[_todoList.indexWhere((item) => item.id == todo.id)] = todo;
    notifyListeners();
  }
}
