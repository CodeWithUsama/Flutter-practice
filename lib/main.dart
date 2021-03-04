import 'package:card_practice/userInput.dart';
import 'package:flutter/material.dart';
import './answer.dart';
import './print_Question.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _pressed = false;

  void _showAnswer() {
    setState(() {
      _pressed = true;
    });
  }

  void _hideAnswer() {
    setState(() {
      _pressed = false;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Widget"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PrintQuestion(),
          UserInput(
            showAns: _showAnswer,
            hideAns: _hideAnswer,
          ),
          _pressed ? Answer() : Container()
        ],
      ),
    );
  }
}
