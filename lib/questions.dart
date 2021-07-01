import 'package:flutter/material.dart';

class QUESTIONCLASS extends StatelessWidget {
  String questionTXT;
  QUESTIONCLASS(this.questionTXT);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(questionTXT,
          style: TextStyle(
            fontFamily: "Arial",
            fontSize: 50,
          ),
          textAlign: TextAlign.center),
    );
  }
}
