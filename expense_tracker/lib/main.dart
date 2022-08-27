import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:expense_tracker/home_page.dart';


void main() async {

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}


