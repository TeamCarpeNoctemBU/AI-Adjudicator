import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Comfortaa',
      ),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text(
              'AI-Adjudicator',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
            Container(
              margin: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey)
              ),
              child: RaisedButton(
                child: Text(
                  'Review Case',
                  style: TextStyle(fontSize: 30.0),
                ),
                color: Colors.black,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey)
              ),
              child: RaisedButton(
                child: Text(
                  'Start New Case',
                  style: TextStyle(fontSize: 30.0),
                ),
                color: Colors.black,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
          ]))),
    );
  }
}
