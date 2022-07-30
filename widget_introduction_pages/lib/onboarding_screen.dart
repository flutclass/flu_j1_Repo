import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'intro_pages/intro_page_1.dart';
import 'intro_pages/intro_page_2.dart';
import 'intro_pages/intro_page_3.dart';
import 'home_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  bool OnLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index){
              setState(() {
                OnLastPage = (index==2);
              });

            },
            controller: _controller,
            children: [
           Intro_page_1(),
              Intro_page_2(),
              Intro_page_3()

            ],

          ),
          Container(
              alignment: Alignment(0,0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap:(){
                      _controller.jumpToPage(0);
                    },
                    child: Text("skip",style: TextStyle(fontSize: 20)),
                  ),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  OnLastPage ?
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return HomePage();
                      }));
                    },
                    child: Text("done",style: TextStyle(fontSize: 20)),
                  ):
                  GestureDetector(
                    onTap: (){
                      _controller.nextPage(duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: Text("next",style: TextStyle(fontSize: 20)),
                  ),
                ],
              ))

        ],
      ),
    );
  }
}
