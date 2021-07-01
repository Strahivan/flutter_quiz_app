import 'package:flutter/material.dart';

class RESULTCLASS extends StatelessWidget {
  final int resultScore;
  final handleQuizReset;

  String get resultPhrase {
    var resultText = "You did it";
    if (resultScore <= 8) {
      resultText = "You are awesome";
    } else if (resultScore <= 5) {
      resultText = "Not bad!";
    } else {
      resultText = "You can do better!";
    }
    return resultText;
  }

  RESULTCLASS(this.resultScore, this.handleQuizReset);

  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(resultPhrase),
      FlatButton(onPressed: handleQuizReset, child: Text("Restart Quiz"))
    ]));
  }
}
