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
  var qIndex = 0;

  var questions = ['balls ?', 'cock ?', 'cum !?', 'SHOCK !'];

  void q1A() {
    print('I shid mi pands !!');
    setState(() {
      qIndex += 1;
    });
    print(qIndex);
  }

  void q2A() {
    print('I shid mi pands !!');
    setState(() {
      qIndex += 2;
    });
    print(qIndex);
  }

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
            RaisedButton(
              child: Text('Ans 2'),
              onPressed: q2A,
            ),
            RaisedButton(
              child: Text('Ans 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
