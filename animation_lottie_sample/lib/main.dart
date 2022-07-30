import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
// 1
class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  //2
  late final AnimationController _controller;
  bool _bookmark  =false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,
    duration: Duration(seconds: 3),);

  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          if(_bookmark==false){
            _controller.forward();
            _bookmark=true;
          }
          else{
            _controller.reverse();
            _bookmark=false;
          }
        },
        child: Center(
          child: Lottie.network("https://assets4.lottiefiles.com/packages/lf20_xdfeea13.json",
          controller: _controller),

        ),
      ),
    );
  }
}


