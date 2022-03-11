import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// This widget is the root of your application.

class _MyAppState extends State<MyApp> {
  static const _greetings = ["Hi!", "Hello!", "Hola!", "Bon jour!"];
  var _greetingsIndex = 0;
  void _nextGreeting() {
    setState(() {
      if (_greetingsIndex == _greetings.length - 1) {
        _greetingsIndex = 0;
      } else {
        _greetingsIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Assignment"),
        ),
        body: Column(
          children: [
            Text(_greetings[_greetingsIndex]),
            ElevatedButton(
                onPressed: _nextGreeting, child: Text("Next Greeting"))
          ],
        ),
      ),
    );
  }
}
