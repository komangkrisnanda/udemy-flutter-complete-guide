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

  final _questions = const [
    {
      'questionText'  : 'What\'s your favorite color?',
      'answer'        : [
        'Black',
        'Red',
        'Green',
        'White'
      ]
    },
    {
      'questionText'    : 'What\'s your favorite animal?',
      'answer'          : [
        'Rabbit',
        'Snake',
        'Elephant',
        'Lion'
      ]
    },
    {
      'questionText'    : 'Who\'s your favorite instructor?',
      'answer'          : [
        'Max',
        'Manu',
        'Mankz',
      ]
    }
  ];

  void _answerQuestion(){
    //questionIndex = questionIndex + 1;
    setState(() {
      _questionIndex += 1;
    });
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
            )
      )
    );
  }
}