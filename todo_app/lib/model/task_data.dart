import 'package:flutter/material.dart';
import 'package:todo_app/model/task.dart';
import 'package:provider/provider.dart';
class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: "buy milk", isDone: true),
    Task(name: "buyEgg", isDone: false),
    Task(name: "buy cake", isDone: true)

  ];
  int get taskCount{
    return tasks.length;
  }
  void AddTask(String newTaskTitle){
    final task = Task(name:newTaskTitle , isDone: false );
    tasks.add(task);
    notifyListeners();
  }

}