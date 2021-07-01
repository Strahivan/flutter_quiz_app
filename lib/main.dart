import 'dart:ffi';

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MyApplicationState();
  }
}

class MyApplicationState extends State<MyApplication> {
  var questionindex = 0;
  var totalScore = 0;

  // This changes the state of our widget when the button is clicked
  void ButtonClicks(int score) {
    totalScore = totalScore + score;
    setState(() {
      questionindex = questionindex + 1;
    });
  }

  void resetQuiz() {
    setState(() {
      questionindex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "question": "What Color Is Your Favorite?",
        "answers": [
          {"text": "White", "score": 1},
          {"text": "Black", "score": 2},
          {"text": "Red", "score": 3},
          {"text": "Blue", "score": 4},
        ],
      },
      {
        "question": "What Is Your Favorite Animal?",
        "answers": [
          {"text": "Lion", "score": 1},
          {"text": "Sheep", "score": 2},
          {"text": "Shark", "score": 3},
          {"text": "Wolf", "score": 4},
        ],
      },
      {
        "question": "What Is Your Favorite Country",
        "answers": [
          {"text": "Germany", "score": 1},
          {"text": "France", "score": 2},
          {"text": "England", "score": 3},
          {"text": "Serbia", "score": 4},
        ],
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Steve\'s awesome Quizapp"),
            ),
            body: questionindex < questions.length
                ? QUIZCLASS(
                    questionsLIST: questions,
                    answerQuestion: ButtonClicks,
                    questionIndex: questionindex)
                : RESULTCLASS(totalScore, resetQuiz)));
  }
}
