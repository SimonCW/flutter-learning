import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore <= 12) {
      resultText = "You are nice!";
    } else {
      resultText = "You did it!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
            onPressed: resetHandler,
            child: Text("Restart Quiz!"),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.green)))
      ],
    ));
  }
}
