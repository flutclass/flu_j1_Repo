import 'package:quiz_full/questions.dart';

class QuestionHelper {


  int _question_number=0;

  List<Questions> _questionBank = [
    Questions(QuestionDetail: 'Some cats are actually allergic to humans', QuestionAnswer: true),
    Questions(QuestionDetail: 'You can lead a cow down stairs but not up stairs.', QuestionAnswer: false),
    Questions(QuestionDetail: 'Approximately one quarter of human bones are in the feet.', QuestionAnswer: true),
    Questions(QuestionDetail: 'A slug\'s blood is green.', QuestionAnswer: true),
    Questions(QuestionDetail: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', QuestionAnswer: true),
    Questions(QuestionDetail: 'It is illegal to pee in the Ocean in Portugal.', QuestionAnswer: true),
    Questions(QuestionDetail: 'No piece of square dry paper can be folded in half more than 7 times.', QuestionAnswer: false),
    Questions(QuestionDetail: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a '
        'state funeral, because the building is considered too sacred a place.', QuestionAnswer: false),
    Questions(QuestionDetail: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.', QuestionAnswer: true),
    Questions(QuestionDetail: 'The total surface area of two human lungs is approximately 70 square metres.', QuestionAnswer: true),
    Questions(QuestionDetail: 'oogle was originally called \"Backrub\".', QuestionAnswer: true),
    Questions(QuestionDetail: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.', QuestionAnswer: false),
    Questions(QuestionDetail: 'n West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.', QuestionAnswer: true),

  ];
  void nextQuestion(){
    if(_question_number<_questionBank.length -1){
      _question_number++;
    }
  }
  String getQuestionText(){
    return _questionBank[_question_number].QuestionDetail;
  }
  bool getQuestionAnswer(){
    return _questionBank[_question_number].QuestionAnswer;
  }


}