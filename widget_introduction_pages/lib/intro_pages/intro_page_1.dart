import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro_page_1 extends StatelessWidget {
  const Intro_page_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child:Lottie.network("https://assets5.lottiefiles.com/packages/lf20_8ptubsmp.json") ,
    );
  }
}
