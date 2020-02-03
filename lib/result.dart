import 'package:flutter/material.dart';

class Result extends StatelessWidget{

  final Function resetQuestion;
  final int totalScore;

  Result({
    @required this.resetQuestion,
    @required this.totalScore
  });

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
                    'You did it!',
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