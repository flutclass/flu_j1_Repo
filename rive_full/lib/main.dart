import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:rive_full/smiley_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SmileyController smiley_controller = SmileyController();
  String _currentAnimation = '2+';
  double _counter = 0.0;
  void _onChange(double value){
    setState(() {
      var direction = _counter < value ? "+" : "-";
      _counter = value;
      _currentAnimation = '${value.round()}${direction}';
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rive App'),
        backgroundColor: Colors.green[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
                  width: 300,
                  child: FlareActor('assets/happiness_emoji.flr',
                    controller: smiley_controller,
                    alignment: Alignment.center,
                    fit: BoxFit.contain,
                    animation: _currentAnimation,
                  ),

            ),
            Slider(value: _counter, onChanged: _onChange,
            min: 0.0,
            max: 5.0,
            divisions: 4,),
            Text('${_counter}', style: TextStyle(
              fontSize: 25
            ),)
          ],
        ),
      ),

    );
  }
}



