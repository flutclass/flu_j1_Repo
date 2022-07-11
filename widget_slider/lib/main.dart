import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ) );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double current_value = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(current_value.toString() ,style: TextStyle(fontSize: 40), ),
          Slider(value: current_value,
              max: 10,
              min: 0,
              divisions: 4,
              onChanged: (value){
            setState(() {
                current_value  = value;
            });
          })
        ],
      ),
    );
  }
}


