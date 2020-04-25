import 'package:flutter/material.dart';
import 'widgets/question.dart';
import 'widgets/answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext ctx) {
    final questions = [
      {
        "questionText": "What's your favorite color?",
        "answers": [
          "Black", "Red", "White", "Green",
        ],
      },
      {
        "questionText": "What's your favorite animal?",
        "answers": [
          "Tiger", "Cat", "Sparrow", "Lion",
        ],
      },
      {
        "questionText": "What's your favorite place?",
        "answers": [
          "Singapore", "Switzerland", "Spain", "Italy",
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Questionaire App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
