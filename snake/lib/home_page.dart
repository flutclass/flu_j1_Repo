import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:snake/blank_pixel.dart';
import 'package:snake/food_pixel.dart';
import 'package:snake/snake_pixel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

enum snake_Direction { UP, DOWN, LEFT, RIGHT }

class _HomePageState extends State<HomePage> {
  int RowSize = 10;
  int TotalNumberOFSquares = 100;
  List<int> snakePos = [0, 1, 2];
  var currentDirection = snake_Direction.RIGHT;
  int foodPos = 55;
  void startGame() {
    Timer.periodic(Duration(milliseconds: 200), (timer) {
      setState(() {
        moveSnake();


        // snakePos.add(snakePos.last + 1);
        // print(snakePos.first);
        // snakePos.removeAt(0);
      });
    });
  }
void  eatFood(){
while(snakePos.contains(foodPos)){
  foodPos = Random().nextInt(TotalNumberOFSquares);
}
}
  void moveSnake() {
    switch (currentDirection) {
      case snake_Direction.RIGHT:
        {
          if (snakePos.last % RowSize == 9) {
            snakePos.add(snakePos.last + 1 - RowSize) ;

          }
          else{
                snakePos.add(snakePos.last + 1);
          }

        }
        break;
      case snake_Direction.LEFT:
        {
          if (snakePos.last % RowSize == 0) {
            snakePos.add(snakePos.last - 1 - RowSize) ;

          }
          else{
            snakePos.add(snakePos.last -1) ;
          }

        }
        break;
      case snake_Direction.UP:
        {
          if(snakePos.last < RowSize) {
            snakePos.add(snakePos.last - RowSize + TotalNumberOFSquares);

          }
          else{
            snakePos.add(snakePos.last - RowSize );
          }

        }
        break;
      case snake_Direction.DOWN:
        {
          if(snakePos.last + RowSize < RowSize) {
            snakePos.add(snakePos.last + RowSize - TotalNumberOFSquares);

          }
          else{
            snakePos.add(snakePos.last + RowSize );
          }

        }
        break;
      default:
    }
    if(snakePos.last==foodPos){
      eatFood();
    } else{
      snakePos.removeAt(0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
// high score
        Expanded(
          child: Container(
// color: Colors.blue,
              ),
        ),
//game grid
        Expanded(
          flex: 3,
          child: GestureDetector(
            onVerticalDragUpdate: (details) {
              if (details.delta.dy > 0 && currentDirection!=snake_Direction.UP)  {
                currentDirection = snake_Direction.DOWN;
              } else if (details.delta.dy < 0 && currentDirection!=snake_Direction.DOWN) {
                currentDirection = snake_Direction.UP;
              }
            },
            onHorizontalDragUpdate: (details) {
              if (details.delta.dx > 0  && currentDirection!=snake_Direction.LEFT) {
                currentDirection = snake_Direction.RIGHT;
              } else if (details.delta.dx < 0 && currentDirection!=snake_Direction.RIGHT)  {
                currentDirection = snake_Direction.LEFT;
              }
            },
            child: GridView.builder(
              itemCount: TotalNumberOFSquares,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: RowSize),
              itemBuilder: (context, index) {
                if (snakePos.contains(index)) {
                  return const SnakePixel();
                } else if (foodPos == index) {
                  return FoodPixel();
                } else {
                  return const BlankPixel();
                }
              },
// color: Colors.green,
            ),
          ),
        ),
//play button
        Expanded(
          child: Container(
            child: Center(
              child: MaterialButton(
                child: Text('PLAY'),
                color: Colors.pink,
                onPressed: startGame,
              ),
            ),
// color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
