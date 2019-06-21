import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'email_screen.dart';
import 'pages_screen.dart';
import 'airplay_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.blue[400];
  final _bottomNavigationTextFontSize = 12.0;
  List<Widget> screenList = List();
  int _currentIndex = 0;

  @override
  void initState() {
    screenList
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirPlayScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: _bottomNavigationColor),
            title: Text(
              "Home",
              style: TextStyle(
                color: _bottomNavigationColor,
                fontSize: _bottomNavigationTextFontSize,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email, color: _bottomNavigationColor),
            title: Text(
              "Email",
              style: TextStyle(
                color: _bottomNavigationColor,
                fontSize: _bottomNavigationTextFontSize,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages, color: _bottomNavigationColor),
            title: Text(
              "Pages",
              style: TextStyle(
                color: _bottomNavigationColor,
                fontSize: _bottomNavigationTextFontSize,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplay, color: _bottomNavigationColor),
            title: Text(
              "AirPlay",
              style: TextStyle(
                color: _bottomNavigationColor,
                fontSize: _bottomNavigationTextFontSize,
              ),
            ),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
