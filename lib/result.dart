import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;
  Result(this.score,this.reset);
  String get ResultPhase {
    String resultText;
    if (score < 5) {
      resultText = 'You Are Very Good';
    } else if (score < 8) {
      resultText = 'You Are  Good';
    } else if (score < 10) {
      resultText = 'You Are  Bad';
    } else {
      resultText = 'You Are  Very Bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
     child: Column(
        children:[Text(
      ResultPhase,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ),
    FlatButton(child: Text('Restart'),onPressed:reset,)],
     )
    );
  }
}
