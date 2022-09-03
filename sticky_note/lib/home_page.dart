import 'package:flutter/material.dart';
import 'package:sticky_note/NoteGrid.dart';
import 'package:sticky_note/button.dart';
import 'package:sticky_note/google_sheet_api.dart';
import 'package:sticky_note/loading_circle.dart';
import 'package:sticky_note/textbox.dart';
import 'dart:async';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final TextEditingController _controller = TextEditingController();
  String Test = "";
  void _post(){
    GoogleSheetApi.insert(_controller.text.trim());
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
           child:  NoteGrid()
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
