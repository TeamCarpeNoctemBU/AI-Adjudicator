import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
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
                  color: Colors.white,
                  onPressed: () async{
                    final response = await http.get(' http://127.0.0.1:5000/');
                    final decoded = json.decode(response.body) as Map<String, dynamic>;
                    setState((){
                      greetings = decoded['greetings'];
            }
          });
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