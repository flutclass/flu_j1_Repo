import 'package:flutter/material.dart';

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
        body: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget> [
            Container(

              // height: 100,
              width: 100,
              color: Colors.deepPurple[600],
            ),
            Container(

              height: 100,
              width: 100,
              color: Colors.deepPurple[400],
            ),
            Container(

              height: 100,
              width: 100,
              color: Colors.deepPurple[200],
            ),
          ],
        ),
      ),
    );
  }
}

