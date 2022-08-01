import 'package:flutter/material.dart';
class Coffee_type extends StatelessWidget {
Coffee_type({required this.coffee_type, required this.isSelected});
final String coffee_type;
final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( left: 25.0),
      child: Text(coffee_type,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: isSelected ? Colors.orange : Colors.white,
      ),),
    );
  }
}
