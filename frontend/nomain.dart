// import 'package:ai_adjudicator/main.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp(
//     title: 'Death'
//     home: MyApp(),
//   ));
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   void fn1(){
//     print('i got pressed');
//   }
//
//   void fn2(){
//     print('ouch');
//   }
//   void _navigateToNextScreen(BuildContext context) {
//     Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: new ThemeData(
//         scaffoldBackgroundColor: Colors.black,
//         fontFamily: 'Comfortaa',
//       ),
//       home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.black,
//             centerTitle: true,
//             title: Text(
//               'AI-Adjudicator',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//           body: Center(
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     Image.asset('assets/images/logo_but_sexy.png'),
//                 // Container(
//                 //   margin: EdgeInsets.only(top: 150.0),
//                 //   decoration:
//                 //   BoxDecoration(border: Border.all(color: Colors.grey)),
//                 //   child: RaisedButton(
//                 //     child: Text(
//                 //       'Review Case',
//                 //       style: TextStyle(fontSize: 30.0),
//                 //     ),
//                 //     color: Colors.black,
//                 //     textColor: Colors.white,
//                 //     onPressed: fn1,
//                 //   ),
//                 // ),
//                 Container(
//                   margin: EdgeInsets.only(top: 200.0),
//                   decoration:
//                       BoxDecoration(border: Border.all(color: Colors.grey)),
//                   child: RaisedButton(
//                     child: Text(
//                       'Start New Case',
//                       style: TextStyle(fontSize: 30.0),
//                     ),
//                     color: Colors.black,
//                     textColor: Colors.white,
//                     onPressed: () { Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => const SecondRoute()),},
//                   ),
//                 ),
//               ]))),
//     );
//   }
// }
// class SecondRoute extends StatelessWidget {
//   const SecondRoute({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }
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
