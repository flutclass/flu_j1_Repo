import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int time_left = 5;
  void countdown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if(time_left>0){ time_left--;}
        else { timer.cancel();}


      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Time Left is ${time_left} ',
                style: TextStyle(fontSize: 30),
              ),
              MaterialButton(
                onPressed: () {
                  countdown();
                },
                child: Text('start',
                    style: TextStyle(fontSize: 50, color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
