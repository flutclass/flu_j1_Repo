import 'package:flutter/material.dart';
import 'package:todo_gsheet/textbox.dart';
import 'package:todo_gsheet/google_sheet_api.dart';
class ToDolist extends StatefulWidget {
  const ToDolist({Key? key}) : super(key: key);

  @override
  State<ToDolist> createState() => _ToDolistState();
}

class _ToDolistState extends State<ToDolist> {
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: GoogleSheetApi.currentNotes.length,
        itemBuilder: (BuildContext contex , int index){
      return CheckboxListTile(value: GoogleSheetApi.currentNotes[index][1] ==0 ?false :true,
          onChanged: (newValue){
        GoogleSheetApi.update(index, newValue == false ? 0 :1);
        setState(() {
          GoogleSheetApi.currentNotes[index][1] = (newValue == false ? 0 :1);
        });

          },
        title: Text(GoogleSheetApi.currentNotes[index][0]),
          );
    });
  }
}

