import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyApp() ,
  ) );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.deepPurple[200],
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.deepPurple[400],
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.deepPurple[600],
            ),
          ],
        ),
      ),
    );
  }
}


