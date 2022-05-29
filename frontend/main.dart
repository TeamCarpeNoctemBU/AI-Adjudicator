import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.black,
    appBar: AppBar(
       backgroundColor: Colors.black,
            centerTitle: true,
            title: const Text(
              'AI-Adjudicator',
              style: TextStyle(
                fontFamily: 'Comfortaa',
                  color: Colors.white
              ),
            ),
    ),
    body: Center(
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/logo_but_sexy.png'),
          Container(
      margin: EdgeInsets.only(top: 250),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: RaisedButton(
        child: const Text('Start New Case', style: TextStyle(
            fontFamily: 'Comfortaa',
            color: Colors.white,
            fontSize: 30.0
        ),
        ),
        color: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondRoute()),
          );
        },
      ),
          ), ], ),
    ),
  );
}}

class SecondRoute extends StatelessWidget {
  // final fieldText = const TextEditingController();
  const SecondRoute({super.key});
  // void clearText() {
  //   fieldText.clear();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('New Case', style: TextStyle(
            fontFamily: 'Comfortaa',
            color: Colors.white,
            fontSize: 20.0
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Text('\nenrollment number', style: TextStyle(color: Colors.white, fontSize: 25, fontFamily: 'Comfortaa'),),
            Container(
              // width: 100.0,
              child: TextField(
                maxLength: 11,
                style: TextStyle(color: Colors.white, fontFamily: 'Comfortaa'),
                  textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'enter the enrollment number',
                  fillColor: Colors.grey, filled: true
                ),
                // controller: fieldText,
              ),
            ),
            Text('\ntestimony 1', style: TextStyle(color: Colors.white, fontSize: 25, fontFamily: 'Comfortaa'),),
            Container(
              width: 350.0,
              child: TextField(
                style: TextStyle(color: Colors.white, fontFamily: 'Comfortaa'),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'enter the testimony',
                    fillColor: Colors.grey, filled: true
                ),
                maxLines: null, autofocus: false,
                // controller: fieldText,
              ),
            ),
            Text('\ntestimony 2', style: TextStyle(color: Colors.white, fontSize: 25, fontFamily: 'Comfortaa'),),
            Container(
              width: 350.0,
              child: TextField(
                style: TextStyle(color: Colors.white, fontFamily: 'Comfortaa'),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'enter the testimony',
                    fillColor: Colors.grey, filled: true
                ),
                maxLines: null, autofocus: false,
                // controller: fieldText,
              ),
            ),
            Container(
              child: RaisedButton(
                child: const Text('\n+1', style: TextStyle(
                    fontFamily: 'Comfortaa',
                    color: Colors.redAccent,
                    fontSize: 30.0
                ),
                ),
                color: Colors.black,
                onPressed: () {
                  print('big working');
                },
              ),
            ),
            Container(
              child: RaisedButton(
                child: const Text('\nSubmit', style: TextStyle(
                    fontFamily: 'Comfortaa',
                    color: Colors.greenAccent,
                    fontSize: 30.0
                ),
                ),
                color: Colors.black,
                onPressed: () {
                  print('big working');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}