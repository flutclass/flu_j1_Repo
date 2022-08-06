import 'package:flutter/material.dart';
class list_tile extends StatelessWidget {

  list_tile({required this.IconImagePath ,
  required this.tileTitle , required this.tileSubTitle });
  final String IconImagePath;
  final String tileTitle;
  final String tileSubTitle;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(25.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    height: 80,
                    child: Image.asset(IconImagePath),

                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(tileTitle,style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.bold),),
                      SizedBox(height: 10),
                      Text(tileSubTitle,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600]
                        ),)
                    ],
                  ),
                ],
              ),

              Icon(Icons.arrow_forward_ios)
            ],
          )
        ],
      ),
    );
  }
}