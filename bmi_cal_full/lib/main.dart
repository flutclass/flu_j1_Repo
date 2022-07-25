import 'package:flutter/material.dart';
import 'screens/input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(
      // accentColor: Color(0xFF85937a),
      scaffoldBackgroundColor: Color(0xFF85937a),
      accentColor: Color(0xFF586c5c),
      textTheme: TextTheme(
        bodyText1: TextStyle(color: Color(0xFFdfdcb9)),
        bodyText2: TextStyle(color: Color(0xFFdfdcb9)),
      )
    ),
    home: InputPage(),
    );
  }
}


