import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo",
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: Scaffold(),
    );
  }
}
