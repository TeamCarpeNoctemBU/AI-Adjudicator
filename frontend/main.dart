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
  const SecondRoute({super.key});

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
      // Below is the button for previous page
      // body: Center(
      //   child: RaisedButton(
      //     color: Colors.black,
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     child: const Text('Go back!', style: TextStyle(
      //         fontFamily: 'Comfortaa',
      //         color: Colors.white
      //     ),
      //     ),
      //   ),
      // ),
    );
  }
}