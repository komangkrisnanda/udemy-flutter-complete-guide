import 'package:flutter/material.dart';

class Result extends StatelessWidget{

  final Function resetQuestion;

  Result({
    @required this.resetQuestion
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
                    style: TextStyle(fontSize: 20)
                ),
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