import 'package:flutter/material.dart';


const labelTextStyle = TextStyle(
    fontSize: 19,color: Color(0xFF586c5c)
);
class icon_content extends StatelessWidget {

  icon_content({required this.icon,required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
          size: 90,
          color: Color(0xFF586c5c),
        ),
        SizedBox(
          height: 5,

        ),
        Text(label,style:labelTextStyle )
      ],
    );
  }
}