import 'package:flutter/cupertino.dart';
import 'package:flutter_project/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> taskList = [
    Task(name: "Task 1"),
    Task(name: "Task 2"),
    Task(name: "Task 3"),
    Task(name: "Task 4"),
  ];

  int get count {
    return taskList.length;
  }

  void addTask(Task task) {
    taskList.add(task);
    notifyListeners();
  }

  void deleteTask(Task task) {
    taskList.remove(task);
    notifyListeners();
  }
}
