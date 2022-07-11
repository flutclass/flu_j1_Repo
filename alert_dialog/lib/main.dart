import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('Content.........'),
            actions: [
              MaterialButton(
                  child: Text('Button2'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              MaterialButton(
                  child: Text('Button1'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.deepPurple[100],
          onPressed: () {
            _showDialog();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Show Dialog',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
