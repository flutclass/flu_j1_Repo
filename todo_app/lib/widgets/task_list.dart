import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';
import 'package:todo_app/model/task.dart';
class TaskList extends StatefulWidget {
final List<Task> tasks;
TaskList({required this.tasks});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  // List<Task> tasks = [
  //   Task(name: "buy milk", isDone: true),
  //   Task(name: "buyEgg", isDone: false),
  //   Task(name: "buy cake", isDone: true)
  //
  // ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context ,index){
          return TaskTile(
              TaskTitle: widget.tasks[index].name,
              isChecked: widget.tasks[index].isDone,
              checkBoxState:(checkboxState){
                setState(() {
                  widget.tasks[index].toggleDone();
                });
              }
          );

        });  }
}