import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Ok'),
        ),
        body: Column(children: [
          Text('the questan !'),
          RaisedButton(child: Text('Ans 1'),onPressed: null,),
          RaisedButton(child: Text('Ans 2'),onPressed: null,),
          RaisedButton(child: Text('Ans 3'),onPressed: null,),
          ],
        ),
      ),
    );
  }
}
