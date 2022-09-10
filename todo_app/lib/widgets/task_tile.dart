import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

 final bool isChecked ;
 final String TaskTitle;
 final Function checkBoxState;
 final VoidCallback LongPressCallback;

 TaskTile({required this.TaskTitle , required this.isChecked ,required this.checkBoxState
 , required this.LongPressCallback});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: LongPressCallback,
      title: Text(TaskTitle,
      style: TextStyle(
        decoration: (isChecked ? TextDecoration.lineThrough : null),
      ),),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value){
          checkBoxState(value);
        },

      ),
    );
  }
}

// class TaskCheckBox extends StatelessWidget {
// final bool checkboxState;
// TaskCheckBox({required this.checkboxState});
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checkboxState,
//       onChanged: (value){
//         // setState(() {
//         //   isChecked = value!;
//         // });
//
//       },
//     );
//   }
// }