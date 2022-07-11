import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyApp() ,
  ), );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _pages = [
    Center(
      child: Text('HomePage',
      style: TextStyle(fontSize: 50),),
    ),
    Center(
      child: Text('Messages',
        style: TextStyle(fontSize: 50),),
    ),
    Center(
      child: Text('Account',
        style: TextStyle(fontSize: 50),),
    ),
    Center(
      child: Text('Setting',
        style: TextStyle(fontSize: 50),),
    ),
  ];
  int _selected_index = 0;
  void _navigate_bottom (int index){
    setState(() {
      _selected_index = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_selected_index],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selected_index,
        onTap: _navigate_bottom ,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: 'messages'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'account'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'setting'),
        ],
      ),

    );
  }
}
