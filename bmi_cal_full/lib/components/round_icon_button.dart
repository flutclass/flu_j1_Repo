
import 'package:flutter/material.dart';
import '../constants.dart';
class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.iconColor, required this.onPress});
  final IconData? icon;
  final Color? iconColor;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      // onPressed: onPress,
      // onPressed: onPressed(),
      child: Icon(icon, color: iconColor),
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFFdfdcb9),
    );
  }
}