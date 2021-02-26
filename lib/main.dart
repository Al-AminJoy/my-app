import 'package:flutter/material.dart';
import 'package:my_app/result.dart';
import 'quiz.dart';
import 'result.dart';

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
  var _score = 0;
  final questions = const [
    {
      'question': 'What Is Your Favourite Color ?',
      'answere': [
        {'title': 'Red', 'score': 5},
        {'title': 'Green', 'score': 4},
        {'title': 'Blue', 'score': 2},
        {'title': 'White', 'score': 3}
      ],
    },
    {
      'question': 'What Is Your Favourite animal ?',
      'answere': [
        {'title': 'Tiger', 'score': 5},
        {'title': 'Lion', 'score': 5},
        {'title': 'Rabbit', 'score': 5},
        {'title': 'Elephant', 'score': 5}
      ],
    },
  ];
  void _answereQuestion(int score) {
    setState(() {
      _questionIndex++;
      _score += score;
    });
    print(_questionIndex);
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                answereQuestion: _answereQuestion,
                questions: questions,
                questionIndex: _questionIndex)
            : Result(_score,resetQuiz)
      ),
    );
  }
}
