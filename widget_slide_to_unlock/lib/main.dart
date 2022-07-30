import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: SlideAction(
            borderRadius: 12,
            elevation: 0,
            innerColor: Color(0xFF586c5c),
            outerColor: Color(0xFFa9af90),
            sliderButtonIcon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            text: "CALCULATE",
            textStyle: TextStyle(
              color: Color(0xFFF7EDDB),
              fontSize: 20
            ),
            onSubmit: (){
              print("tamom shod");
            },
          ),
        ),),
    );
  }
}
