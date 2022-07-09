import 'package:flutter/material.dart';
import 'Square.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body:ListView.builder(
          itemCount: 7,
            itemBuilder: (context, index) {
            return Square();
        }),
      ),
    );
  }
}

