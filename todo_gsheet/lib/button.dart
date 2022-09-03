import 'package:flutter/material.dart';
class Mybutton extends StatelessWidget {
    final String txtVal;
    final VoidCallback func;
    Mybutton({required this.func , required this.txtVal});


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: func,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.green,
            child: Text(txtVal,
              style: TextStyle(color: Colors.white),

            ),
          ),
        ),
      ),
    );
  }
}
