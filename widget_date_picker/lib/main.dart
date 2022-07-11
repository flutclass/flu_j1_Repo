import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    // theme: ThemeData(primarySwatch: Colors.deepPurple),
    theme: ThemeData(brightness: Brightness.dark),
  ), );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _showDatePicker(){
    showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2025)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: _showDatePicker,
          child: Text('Click me ', style: TextStyle(
            fontSize: 30
          ),),
          color: Colors.deepPurple[200],
        ),
      ),

    );
  }
}

