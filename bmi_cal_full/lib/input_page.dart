import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const button_container_hieght = 80.0;
const active_color = Color(0xFFF7EDDB);
const button_color = Color(0xFF586c5c);
const inactive_cardcolor = Color(0xFFa9af90);
enum Gender {male,female}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}




class _InputPageState extends State<InputPage> {
  Color MalecardColor = inactive_cardcolor ;
  Color FemalecardColor = inactive_cardcolor;
  Gender? selected_gender;
  // void updateColor(Gender selectedgender){
  //   if(selectedgender==Gender.male){
  //     if(MalecardColor==inactive_cardcolor){
  //       MalecardColor=active_color;
  //       FemalecardColor=inactive_cardcolor;
  //     }
  //     else{
  //       MalecardColor = inactive_cardcolor;
  //     }
  //   }
  //   if(selectedgender==Gender.female){
  //     if(FemalecardColor==inactive_cardcolor){
  //       FemalecardColor=active_color;
  //       MalecardColor=inactive_cardcolor;
  //     }
  //     else{
  //       FemalecardColor = inactive_cardcolor;
  //     }
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF202e32),
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                         selected_gender =Gender.male;
                        });

                      },
                      child: ReusableCard(
                        color: selected_gender==Gender.male ? active_color : inactive_cardcolor ,
                        cardChild: icon_content(
                          icon: FontAwesomeIcons.mars,
                          label: 'Male',
                        )

                      ),
                    )
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selected_gender =Gender.female;
                        });

                      },
                      child: ReusableCard(
                          color: selected_gender==Gender.female ? active_color : inactive_cardcolor,
                        cardChild: icon_content(
                          icon: FontAwesomeIcons.venus ,
                          label: 'Female',

                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: ReusableCard(
                color: inactive_cardcolor
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(
                      color: inactive_cardcolor
                  ),),

                  Expanded(
                    child: ReusableCard(
                        color: inactive_cardcolor
                    )
                  )
                ],
              ),

            ),
            Container(
              color: button_color,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: button_container_hieght,
            )
          ],
        ));
  }
}




