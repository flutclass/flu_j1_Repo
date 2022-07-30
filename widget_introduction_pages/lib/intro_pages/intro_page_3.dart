import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Intro_page_3 extends StatelessWidget {
  const Intro_page_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Lottie.network("https://assets2.lottiefiles.com/packages/lf20_oc9peor8.json"),

    );
  }
}
