import 'package:flutter/material.dart';
import './home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
        body: Container(
          child: Home(),
        ),
        // backgroundColor: Colors.indigo[50],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
