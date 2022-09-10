import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/model/task_data.dart';
import 'package:todo_app/widgets/task_tile.dart';
import 'package:todo_app/model/task.dart';

class TaskList extends StatelessWidget {
// final List<Task> tasks;
// TaskList({required this.tasks});

  // List<Task> tasks = [
  //   Task(name: "buy milk", isDone: true),
  //   Task(name: "buyEgg", isDone: false),
  //   Task(name: "buy cake", isDone: true)
  //
  // ];
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, TaskData, child) {
      return ListView.builder(
          itemCount: TaskData.taskCount,
          itemBuilder: (context, index) {
            final task = TaskData.tasks[index];
            return TaskTile(
                LongPressCallback :(){
                  TaskData.deleteTask(task);
                },
                TaskTitle: task.name,
                isChecked: task.isDone,
                checkBoxState: (checkboxState) {
                  TaskData.UpdateTask(task);
                  // setState(() {
                  //   widget.tasks[index].toggleDone();
                  // });
                });
          });
    });
  }
}
