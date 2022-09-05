import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_list.dart';
import 'package:todo_app/screens/add_task_screen.dart';
import 'package:todo_app/model/task.dart';
class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks = [
    Task(name: "buy milk", isDone: true),
    Task(name: "buyEgg", isDone: false),
    Task(name: "buy cake", isDone: true)

  ];
  // Widget BuildButtonSheet(BuildContext context){
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[300],
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context) => AddTaskScreen(
            callback: (newTaskTitle){
              setState(() {
                tasks.add(Task(name:newTaskTitle , isDone: false ));
              });
              Navigator.pop(context);
              // print(newTaskTitle);
            },
          ));
        },
      ),
      backgroundColor: Colors.green[300],
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 60,
              left: 30,
              right: 30,
              bottom: 30
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(Icons.list,
                  size: 30,
                  color: Colors.green[200]),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(
                  height: 15,
                ),
                Text("ChegToDo",
                style: TextStyle(color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w700)),
                Text("${tasks.length}Task",style: TextStyle(color: Colors.white,
                fontSize: 18)),
                SizedBox(
                  height: 6,
                ),

              ],
            ),
          ),
          Expanded(child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)
                )
            ),
            child: TaskList(tasks:tasks ),
          ),),
        ],
      ),
    );
  }
}




