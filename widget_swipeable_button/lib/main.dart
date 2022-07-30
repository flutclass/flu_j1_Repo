import 'package:flutter/material.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ),);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isFinished = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: SwipeableButtonView(
            isFinished: _isFinished,
            onFinish: (){
              setState(() {
                _isFinished=false;
              });
            },
            onWaitingProcess: (){
              Future.delayed(Duration(seconds: 1),(){
                setState(() {
                  _isFinished =true;
                });
              });
            },
            activeColor: Colors.pink,
            buttonWidget: Icon(Icons.arrow_forward,color: Colors.black),
            buttonText: "Calculate",

          ),
        ),
      ),
    );
  }
}

