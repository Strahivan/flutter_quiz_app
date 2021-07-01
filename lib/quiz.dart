import 'package:flutter/material.dart';

import './questions.dart';
import './answer.dart';

class QUIZCLASS extends StatelessWidget {
  final questionsLIST;
  final questionIndex;
  final answerQuestion;

  QUIZCLASS(
      {@required this.questionsLIST,
      @required this.answerQuestion,
      @required this.questionIndex});

  Widget build(BuildContext context) {
    return Column(
      children: [
        QUESTIONCLASS(questionsLIST[questionIndex]["question"] as String),
        ...(questionsLIST[questionIndex]["answers"]
                as List<Map<String, Object>>)
            .map((answer) {
          return ANSWERSCLASS(
              () => answerQuestion(answer["score"]), answer["text"]);
        }).toList()
      ],
    );
  }
}
