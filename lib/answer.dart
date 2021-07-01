import 'package:flutter/material.dart';

class ANSWERSCLASS extends StatelessWidget {
  // store a function
  final VoidCallback selectHandler;
  final AnswerTextToOutput;

  // whatever function gets parsed, store it into selectHandler
  ANSWERSCLASS(this.selectHandler, this.AnswerTextToOutput);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: RaisedButton(
        child: Text(AnswerTextToOutput),
        textColor: Colors.purple,
        onPressed: selectHandler,
        color: Colors.cyan,
      ),
    );
  }
}
