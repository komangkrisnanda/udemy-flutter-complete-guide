import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget{

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
//            Answer(answerQuestion),
//            Answer(answerQuestion),
//            Answer(answerQuestion)
        ...(questions[questionIndex]['answer'] as List<String>).map((answer){
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}