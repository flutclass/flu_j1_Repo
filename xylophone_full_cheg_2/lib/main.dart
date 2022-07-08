import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(const XylophoneApp());
}
class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  static AudioCache player = AudioCache();
  var audioColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple
  ];
  Widget playerButton(int num) {
    return Flexible(
      child: Container(
        color: audioColors[num],
        child: TextButton(
          onPressed: () {
            // final player = AudioCache();
            player.play('note${num + 1}.wav');
          },
          child: Center(
            child: Text(''
            ),
          ),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisSize: MainAxisSize.max,
              children: [
                playerButton(0),
                playerButton(1),
                playerButton(2),
                playerButton(3),
                playerButton(4),
                playerButton(5),
                playerButton(6),
              ],
            ),
          ),
        ),
      ),
    );

  }
}

