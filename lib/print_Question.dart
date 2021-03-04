import 'package:flutter/material.dart';

class PrintQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15.0,
      ),
      width: double.infinity,
      child: Text(
        "Q) What is Card Widget?",
        style: TextStyle(
          fontSize: 28.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
