import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(title: "Expense Tracker", home: MyHomePage());
  }
}

// This widget is the root of your application.
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Expense Tracker")),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                elevation: 8,
                child: Text("Chart!"),
              ),
            ),
            Container(
              width: double.infinity,
              child: Card(
                elevation: 8,
                child: Text("List of exp"),
              ),
            )
          ],
        ));
  }
}
