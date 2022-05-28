import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import './Questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implementation createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Ok'),
        ),
        body: Column(
          children: [
            Question(
              questions.elementAt(qIndex),
            ),
            RaisedButton(
              child: Text('Ans 1'),
              onPressed: q1A,
            ),
          ],
        ),
      ),
    );
  }
}