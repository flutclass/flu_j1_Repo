import 'package:flutter/material.dart';
import 'package:snake/blank_pixel.dart';
import 'home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
// grid dimensions


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int RowSize = 10;
  int TotalNumberOFSquares = 100;
  List<int> snakePos =  [0,1,2];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: HomePage(),

      ),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
