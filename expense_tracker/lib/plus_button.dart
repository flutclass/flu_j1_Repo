import 'package:flutter/material.dart';
class PlusButton extends StatelessWidget {

final VoidCallback showDial;
PlusButton({required this.showDial});

  @override
  Widget build(BuildContext context) {
   return GestureDetector(
     onTap: showDial,
     child: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
            color: Colors.grey[400],
            shape: BoxShape.circle
        ),
        child: Center(
          child: Text("+",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20
            ),),
        ),
      ),
   );
  }
}
