import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

void main() {
  runApp( MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<void> _handle_refresh() async{
    return await Future.delayed(Duration(seconds: 4));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: LiquidPullToRefresh(
  onRefresh: _handle_refresh,
  color: Colors.deepPurple,
  height: 300,
  backgroundColor: Colors.deepPurple[200],


  child:   ListView(
    children: [
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 300,
            color: Colors.deepPurple,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 300,
            color: Colors.deepPurple,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 300,
            color: Colors.deepPurple,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 300,
            color: Colors.deepPurple,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 300,
            color: Colors.deepPurple,
          ),
        ),
      ),

    ],

  ),
),
    );
  }
}


