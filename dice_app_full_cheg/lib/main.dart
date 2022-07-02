import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            'Diceeee',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      body: DicePage(),
    ),
  ));
}








class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 4;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // flex: 1,
            child: FlatButton(
              onPressed: (){

                setState(() {

                  leftDice = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/dice${leftDice}.png'),
              ),
            ),
          ), Expanded(
            // flex: 3,
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rightDice  = Random().nextInt(6) + 1;
                });
                // print('Right button pressed');
              },
              child: Image(
                image: AssetImage('images/dice${rightDice}.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}


// class DicePage extends StatelessWidget {
//   const DicePage({Key? key}) : super(key: key);
//
// }
