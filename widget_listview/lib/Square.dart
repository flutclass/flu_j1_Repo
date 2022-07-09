
import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  const Square({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        color: Colors.deepPurple[600],
        height: 200,
      ),
    );
  }
}
