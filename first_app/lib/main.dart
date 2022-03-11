import "package:flutter/material.dart";

import "./quiz.dart";
import "./result.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  static const _questions = [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 8},
        {"text": "Green", "score": 3},
        {"text": "White", "score": 1},
      ]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {"text": "Penguin", "score": 1},
        {"text": "Penguin", "score": 1},
        {"text": "mh .. Penguin!", "score": 1}
      ]
    },
    {
      "questionText": "Essen machen?",
      "answers": [
        {"text": "Ja, mache ich gerne, code ruhig weiter!", "score": 3},
        {
          "text": "Ja, ich mache essen, telefoniere du mal mit Steffen",
          "score": 8
        },
        {
          "text": "Ohja, am liebsten wäre mir du lässt mich in Ruhe kochen!",
          "score": 4
        }
      ]
    }
  ];

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My first App"),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questions: _questions,
              questionIndex: _questionIndex)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
