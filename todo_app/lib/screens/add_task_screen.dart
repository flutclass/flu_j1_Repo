import 'package:flutter/material.dart';
class AddTaskScreen extends StatelessWidget {
final Function callback;
AddTaskScreen({required this.callback});

  @override
  Widget build(BuildContext context) {
    String NewTaskTitle = "";
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.grey[300],
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.green[400],
            ),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (val){
                NewTaskTitle = val;
              },

            ),
            FlatButton(onPressed: (){
              callback(NewTaskTitle);
            }, child: Text('Add',
            style: TextStyle(
              color: Colors.white,
            ),),
            color: Colors.green[300],)
          ],
        ),
      ),

    );
  }
}
