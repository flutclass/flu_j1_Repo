import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Text('Number of tap is ${count}',
                style: TextStyle(
                  fontSize: 30
                ),

              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    count++;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    
                    'Tap me',
                    style: TextStyle(fontSize: 30),
                  ),
                  color: Colors.teal[200],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
