import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';




//void main(){
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{

  @override
  //_MyAppState createState() => _MyAppState();

  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;

  final _questions = const [
    {
      'questionText'  : 'What\'s your favorite color?',
      'answer'        : [
        {
          'text' : 'Black',
          'score' : 10
        },
        {
          'text' : 'Red',
          'score' : 5
        },
        {
          'text' : 'Green',
          'score' : 3
        },
        {
          'text' : 'White',
          'score' : 1
        }
      ]
    },
    {
      'questionText'    : 'What\'s your favorite animal?',
      'answer'          : [
        {
          'text' : 'Rabbit',
          'score' : 10
        },
        {
          'text' : 'Snake',
          'score' : 15
        },
        {
          'text' : 'Elephant',
          'score' : 20
        },
        {
          'text' : 'Lion',
          'score' : 25
        }
      ]
    },
    {
      'questionText'    : 'Who\'s your favorite instructor?',
      'answer'          : [
        {
          'text' : 'Max',
          'score' : 10
        },
        {
          'text' : 'Manu',
          'score' : 15
        },
        {
          'text' : 'Mankz',
          'score' : 20
        }
      ]
    }
  ];

  void _answerQuestion(int score){
    //questionIndex = questionIndex + 1;


    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
    print("Total score : " + _totalScore.toString());
    if(_questionIndex < _questions.length) {
      print("Question available");
    }
    else{
      print("Question not available");
    }
  }

  void _resetQuestion(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget build(BuildContext ctx){

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App')
        ),
        body: _questionIndex < _questions.length ?
            Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            :
            Result(
              resetQuestion: _resetQuestion,
              totalScore: _totalScore
            )
      )
    );
  }
}