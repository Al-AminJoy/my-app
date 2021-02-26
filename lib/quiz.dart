import 'package:flutter/material.dart';
import 'question.dart';
import 'answere.dart';

class Quiz extends StatelessWidget {
  final Function answereQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;
  Quiz(
      {@required this.answereQuestion,
      @required this.questions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answere'] as List<Map<String,Object>>).map((answere) {
          return Answere(()=>answereQuestion(answere['score']), answere['title']);
        }).toList()
      ],
    );
  }
}
