import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30);
  void _showtimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) => {
              setState(() {
                _timeOfDay = value!;
              })
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              _timeOfDay.format(context).toString(),
              style: TextStyle(fontSize: 35),
            ),
            MaterialButton(
              onPressed: _showtimePicker,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'click me',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              color: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }
}
