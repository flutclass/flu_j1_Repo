import 'package:flutter/material.dart';
import '../constants.dart';
class BottomButton extends StatelessWidget {

  BottomButton({required this.onTap,required this.buttonTitle});
  final String buttonTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
                color: Color(0xFFF7EDDB),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        color: KButton_color,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: Kbutton_container_hieght,
      ),
    );
  }
}