import 'package:flutter/material.dart';
import 'widgets/question.dart';

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
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
      "What's your favorite place?",
      "What's your favorite food?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: () => print("Answer 2 choosen"),
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: () => print("Answer 3 choosen"),
            ),
          ],
        ),
      ),
    );
  }
}
