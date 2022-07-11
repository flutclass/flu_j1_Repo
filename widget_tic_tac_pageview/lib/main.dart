import 'package:flutter/material.dart';
import 'package:widget_tic_tac_pageview/post_2.dart';

import 'post_1.dart';

void main() {
  runApp(MaterialApp(
    home:MyApp() ,
  ), );
}



class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          MyPost1(),
          MyPost2()

        ],
      ),
    );
  }
}
