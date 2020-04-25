import 'package:flutter/material.dart';
import 'widgets/quiz.dart';
import 'widgets/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Black", "score": 3},
        {"text": "Red", "score": 5},
        {"text": "White", "score": 7},
        {"text": "Green", "score": 9},
      ],
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {"text": "Tiger", "score": 3},
        {"text": "Cat", "score": 5},
        {"text": "Sparrow", "score": 7},
        {"text": "Lion", "score": 9},
      ],
    },
    {
      "questionText": "What's your favorite place?",
      "answers": [
        {"text": "Singapore", "score": 3},
        {"text": "Switzerland", "score": 5},
        {"text": "Spain", "score": 7},
        {"text": "Italy", "score": 9},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetHandler() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // _totalScore += score;
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    }
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Questionaire App'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(totalScore: _totalScore, resetHandler: _resetHandler),
      ),
    );
  }
}
