import 'package:flutter/material.dart';
import 'package:sticky_note/button.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final TextEditingController _controller = TextEditingController();
  String Test = "";
  void _post(){
    print(_controller.text.trim());
    setState(() {

      Test = _controller.text.trim();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.grey[700],
                child: Center(child: Text(Test,style: TextStyle(
                  color: Colors.blue,
                ),),),
              ),
            ),
            Container(
              child: Center(
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Post something"),
                Mybutton(func: _post, txtVal: "Post")

              ],
            )
          ],
        ),
      ),
    );
  }
}
