import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home:clipr_rect() ,
  ),);
}


class clipr_rect extends StatefulWidget {
  const clipr_rect({Key? key}) : super(key: key);

  @override
  State<clipr_rect> createState() => _clipr_rectState();
}

class _clipr_rectState extends State<clipr_rect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.deepPurple,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(30),
            //   color: Colors.deepPurple,
            // ),

          ),
        ),
      ),
    );
  }
}
