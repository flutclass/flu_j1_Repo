import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double box_width = 100;
  double box_hieght = 100;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: (){
          setState(() {
            box_width = 300;
            box_hieght = 300;
          });
        },
        child: Scaffold(
          body: Center(
            child: AnimatedContainer(
              duration:Duration(seconds: 2),
              width: box_width,
              height: box_hieght,
              color: Colors.teal,
            ),
          ),
        ),
      ),
    );
  }
}
