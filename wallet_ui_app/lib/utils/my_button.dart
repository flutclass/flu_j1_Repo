import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {

  MyButton({required this.ButtonCaption , required this.imagePath});
  final String ButtonCaption;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 40,
                    spreadRadius: 2
                ),

              ]
          ),
          child: Image.asset(imagePath),
        ),
        SizedBox(height: 5),

        Text(ButtonCaption)
      ],
    );
  }
}