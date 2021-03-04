import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 14.0,
        left: 10.0,
        right: 10.0,
      ),
      decoration: myBoxDecoration(),
      child: Text(
        "Card is a pre-style container with default settings",
        style: TextStyle(
          fontSize: 19.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
        border: Border(
      left: BorderSide(
        color: Colors.blue,
        width: 4,
      ),
    ));
  }
}
