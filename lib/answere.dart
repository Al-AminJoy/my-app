import 'package:flutter/material.dart';

class Answere extends StatelessWidget {
  final Function selectHandler;
  final String answere;
  Answere(this.selectHandler,this.answere);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answere),
        onPressed: selectHandler,
      ),
    );
  }
}
