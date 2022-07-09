import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme:
          ThemeData(textTheme: TextTheme(bodyText2: TextStyle(fontSize: 35))),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Height' + MediaQuery.of(context).size.height.toString()),
            Text('Width' + MediaQuery.of(context).size.width.toString()),
            Text(MediaQuery.of(context).orientation.toString()),
          ],
        ),
      ),
    );
  }
}
