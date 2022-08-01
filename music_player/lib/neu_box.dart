import 'package:flutter/material.dart';
class NuBox extends StatelessWidget {

  NuBox({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Center(child: child),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[300],
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 15,
            offset: Offset(5,5)
          ),
          BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 15,
              offset: Offset(-5,-5)
          ),
        ]
      ),



    );
  }
}
