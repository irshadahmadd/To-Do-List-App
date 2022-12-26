import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo_list_app/models/task.dart';
class TasksData extends ChangeNotifier{
  final List<Task> _tasks = [
    Task(name: "Let's go to College",),
    Task(name: "Let's go to University",),
    Task(name: "Let's go to School",),
  ];
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
  int get taskCount {
    return _tasks.length;
  }
  void addTasks(String newTaskTile){
    final task=Task(name: newTaskTile);
    _tasks.add(task);
    notifyListeners();
  }
  void upDateTask(Task task){
    task.toggleDon();
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}