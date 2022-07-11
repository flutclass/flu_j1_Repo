import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:MyApp() ,
  ), );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late AnimationController _animation_controller;
  double current_value = 0;

  @override
  void initState() {
    _animation_controller = AnimationController(vsync: this,duration: Duration(seconds: 1));
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            _animation_controller.forward();
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.pause_play,
            progress: _animation_controller,
            size: 150,
          ),
        ),
      ),
    );
  }
}

