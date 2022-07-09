import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: GridView.builder(
          itemCount: 12,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ), itemBuilder: (context,index){
            return  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      color: Colors.deepPurple[100],
                    ),
                  );

        }),
        
        // body: GridView.count(crossAxisCount: 6,
        // children: [
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       height: 50,
        //       width: 50,
        //       color: Colors.green,
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       height: 50,
        //       width: 50,
        //       color: Colors.blue,
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       height: 50,
        //       width: 50,
        //       color: Colors.blue,
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       height: 50,
        //       width: 50,
        //       color: Colors.blue,
        //     ),
        //   ),
        // ],
        //
        // ),
      ),
    );
  }
}

