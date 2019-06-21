import 'package:flutter/material.dart';
import 'expansion_tile.dart';
import 'expansion_panel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ExpansionPanelListDemo(),
    );
  }
}
