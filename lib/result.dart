import 'package:flutter/material.dart';

class Result extends StatelessWidget{

  final Function resetQuestion;
  final int totalScore;

  Result({
    @required this.resetQuestion,
    @required this.totalScore
  });

  String get resultPhrase{
    var result = "";

    if(totalScore > 50){
      result = "You are good!";
    }
    else if(totalScore > 35){
      result = "Yup, aweomse!";
    }
    else{
      result = "Yihaa.. you noob :P";
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    resultPhrase,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green[800]
                    ),

                ),
                SizedBox(height: 20),
                Text(
                  'Your Score is : ' + totalScore.toString(),
                  style: TextStyle(fontSize: 25)
                ),
                SizedBox(height: 10),
                RaisedButton(
                  child: Text('Start Again'),
                  onPressed: resetQuestion,
                )
              ]
          )
        ]
    );
  }
}