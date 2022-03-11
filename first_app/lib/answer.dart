import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          child: Text(answerText),
          onPressed: selectHandler,
          style: ElevatedButton.styleFrom(
              primary: Colors.black, onPrimary: Colors.orange),
        ));
  }
}
    // Alternative ways to instantiate button
    // ButtonStyle(
    //     backgroundColor: MaterialStateProperty.all(Colors.orange),
    //     foregroundColor: MaterialStateProperty.all(Colors.black)))
    // RaisedButton(
    //   color: Colors.blue,
    //   textColor: Colors.white,
    //   child: Text(answerText),
    //   onPressed: selectHandler,
    // ));
