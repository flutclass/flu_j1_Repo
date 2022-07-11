import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:MyApp() ,
  ) );
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText:  'Helllloooooooo',

                suffixIcon: IconButton(
                  onPressed: (){
                    _textController.clear();
                  },
                  icon: Icon(Icons.clear),
                )
              ),

            )
          ],
        ),
      ),
    );
  }
}
