import 'package:flutter/material.dart';
class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 30 , right: 30, bottom: 30),
        child: Column(
          children: [
            CircleAvatar(
              child: Icon(Icons.list,
                size: 30,
                color: Colors.green[200],

              ),
              backgroundColor: Colors.white,
              radius: 30,
            ),
          ],
        ),
      ),
    );
  }
}
