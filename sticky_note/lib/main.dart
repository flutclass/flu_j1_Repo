import 'package:flutter/material.dart';
import 'package:sticky_note/google_sheet_api.dart';
import 'package:sticky_note/home_page.dart';
void  main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleSheetApi.init();


  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}


