import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            // alignment: Alignment(1,3),
            height: 250,
            width: 250,

            decoration: BoxDecoration(
            //   border: Border.all(
            //     // color: Colors.deepPurple,
            //     width: 5
            //   ),
            //
            //   // borderRadius: BorderRadius.circular(30),
            //   color: Colors.deepPurple[400],
            //   shape: BoxShape.circle
            // ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(4,4),
                  blurRadius: 15,
                  spreadRadius: 1

                ),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4,-4),
                    blurRadius: 3,
                    spreadRadius: 1

                ),
              ],
                // color: Colors.amber,
              borderRadius: BorderRadius.circular(20)
            ),
            // child: Text('Hello',
            //   style: TextStyle(fontSize: 20,color: Colors.black),
            // ),

          ),
        ),
      ),
    );
  }
}
