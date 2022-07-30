import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Intro_page_2 extends StatelessWidget {
  const Intro_page_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child:Lottie.network("https://assets5.lottiefiles.com/private_files/lf30_7anyyhq6.json") ,

    );
  }
}
