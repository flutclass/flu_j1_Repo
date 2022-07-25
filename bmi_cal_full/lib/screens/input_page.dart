import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_card.dart';
import '../components/icon_content.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:page_transition/page_transition.dart';
import '../constants.dart';
import 'result_page.dart';
import '../components/bottom_button.dart';
import '../components/round_icon_button.dart';
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color MalecardColor = KInactive_card_color;
  Color FemalecardColor = KInactive_card_color;
  Gender? selected_gender;
  int height = 180;
  int weight = 60;
  int age = 20;
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
                    onTap: () {
                      setState(() {
                        selected_gender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                        onPress: () {},
                        color: selected_gender == Gender.male
                            ? KActive_color
                            : KInactive_card_color,
                        cardChild: icon_content(
                          icon: FontAwesomeIcons.mars,
                          label: 'Male',
                        )),
                  )),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected_gender = Gender.female;
                        });
                      },
                      child: ReusableCard(
                        onPress: () {},
                        color: selected_gender == Gender.female
                            ? KActive_color
                            : KInactive_card_color,
                        cardChild: icon_content(
                          icon: FontAwesomeIcons.venus,
                          label: 'Female',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(
              onPress: () {},
              color: KInactive_card_color,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Height", style: KLabelTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: KNumberTextStyle),
                      Text('cm', style: KLabelTextStyle)
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30)),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        activeColor: Color(0xFF586c5c),
                        inactiveColor: Color(0xFFCCD6A6),
                        onChanged: (double Newvalue) {
                          setState(() {
                            height = Newvalue.round();
                          });
                        }),
                  ),
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {},
                      color: KInactive_card_color,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("WEIGHT", style: KLabelTextStyle),
                          Text(weight.toString(), style: KNumberTextStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                                iconColor: KButton_color,
                              ),
                              SizedBox(width: 10),
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                                iconColor: KButton_color,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {},
                      color: KInactive_card_color,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Age", style: KLabelTextStyle),
                          Text(age.toString(), style: KNumberTextStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                                iconColor: KButton_color,
                              ),
                              SizedBox(width: 10),
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                                iconColor: KButton_color,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            BottomButton(
              buttonTitle: "Calculate",
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Result_page(),
                  ),
                );
              },
            )
          ],
        ));
  }
}




