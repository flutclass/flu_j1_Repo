import 'package:flutter/material.dart';
import 'package:quiz_full/question_helper.dart';
import 'package:quiz_full/questions.dart';
void main() {
  runApp(const Quiz_cheg());
}

class Quiz_cheg extends StatelessWidget {
  const Quiz_cheg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SafeArea(
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<Widget> lstScores = [

  ];

  QuestionHelper helper = QuestionHelper();
  void CheckAnswer(bool userPickedAnswer){
    bool correctAnswer = helper.getQuestionAnswer();
    setState(() {
      if(correctAnswer ==userPickedAnswer){
        lstScores.add(Icon(Icons.check,color: Colors.green,));
      }
      else{
        lstScores.add(Icon(Icons.close,color: Colors.red,));

      }
      helper.nextQuestion();

    });


  }

  // List<Questions> qustionBank = [
  //   Questions(QuestionDetail: 'Some cats are actually allergic to humans', QuestionAnswer: true),
  //   Questions(QuestionDetail:'You can lead a cow down stairs but not up stairs.' , QuestionAnswer: true),
  //   Questions(QuestionDetail: 'Approximately one quarter of human bones are in the feet', QuestionAnswer: false)
  // ];
  // List<String> lstQuestions = [
  //   'Some cats are actually allergic to humans',
  //   'You can lead a cow down stairs but not up stairs.',
  //   'Approximately one quarter of human bones are in the feet'
  // ];
  // int questionNumber = 0;
  // List<bool> lstAnswers = [true,true,false];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                helper.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.green,
              onPressed: () {
               CheckAnswer(true);
              },
              child: Text(
                'True',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              onPressed: () {
            CheckAnswer(false);
              },
              child: Text(
                'False',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),
        Row(
          children: lstScores,
        )
      ],
    );
  }
}
