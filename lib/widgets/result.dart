import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Result({@required this.totalScore, @required this.resetHandler});

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = "You are awesome and innocent!";
    } else if (totalScore <= 12) {
      resultText = "Pretty likeable!";
    } else if (totalScore <= 16) {
      resultText = "You are ... strange?!";
    } else {
      resultText = "You did it!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
