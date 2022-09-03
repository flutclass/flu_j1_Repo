import 'package:flutter/material.dart';
import 'package:todo_gsheet/google_sheet_api.dart';
import 'package:todo_gsheet/textbox.dart';
class NoteGrid extends StatelessWidget {
 // final String text;
 // final int NumberOfNotes;
 // NoteGrid({required this.text , required this.NumberOfNotes});


  @override
  Widget build(BuildContext context) {
 return   GridView.builder(
     itemCount: GoogleSheetApi.currentNotes.length,
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
     itemBuilder: (BuildContext context , int index ){
       return MyTextBox(text: GoogleSheetApi.currentNotes[index][0]);
     }
 );

  }
}
