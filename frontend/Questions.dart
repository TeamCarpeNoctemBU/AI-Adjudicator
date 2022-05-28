import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String qText;

  Question(this.qText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(100),
      child: Text(
        qText,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
