import 'package:flutter/material.dart';
import 'package:todo_gsheet/NoteGrid.dart';
import 'package:todo_gsheet/button.dart';
import 'package:todo_gsheet/google_sheet_api.dart';
import 'package:todo_gsheet/loading_circle.dart';
import 'package:todo_gsheet/textbox.dart';
import 'dart:async';
import 'package:todo_gsheet/list_todo.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final TextEditingController _controller = TextEditingController();
  String Test = "";
  void _post() async{
  await  GoogleSheetApi.insert(_controller.text.trim());
    // print(_controller.text.trim());
    setState(() {

      Test = _controller.text.trim();
    });
  }

  void StartLoading ( ){
    Timer.periodic(Duration(seconds: 1), (timer) {
      if(GoogleSheetApi.loading ==false){
        setState(() {
        });
        timer.cancel();
      }

    });
  }
  @override
  void initState() {
    super.initState();
    _controller.addListener(() =>setState(() {
    }));
  }
  @override
  Widget build(BuildContext context) {

    if(GoogleSheetApi.loading =true){
      StartLoading();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('POST NOTE',
        style: TextStyle(
          color: Colors.grey[800]
        ),),
        backgroundColor: Colors.green[300],
        elevation: 0,
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
         Expanded(child: Container(
           child:   ToDolist(),
         )),
            Container(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                            hintText: "Enter",
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: () {},
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Post something"),
                ),
                Mybutton(func: _post, txtVal: "Post")

              ],
            )
          ],
        ),
      ),
    );
  }
}
