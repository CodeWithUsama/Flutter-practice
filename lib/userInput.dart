import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  final Function showAns;
  final Function hideAns;
  UserInput({this.showAns, this.hideAns});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        showButton("Show Answer", showAns),
        showButton("Hide Answer", hideAns)
      ],
    );
  }

  Widget showButton(String text, Function f) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10.0),
      child: RaisedButton(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        color: Colors.blue,
        onPressed: f,
      ),
    );
  }
}
