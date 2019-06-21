import 'package:flutter/material.dart';
import 'home_page.dart';

class KeepAliveDemo extends StatefulWidget {
  @override
  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}

class _KeepAliveDemoState extends State<KeepAliveDemo>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("keep alive demo"),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.directions_car, color: Colors.white)),
            Tab(icon: Icon(Icons.directions_transit, color: Colors.white)),
            Tab(icon: Icon(Icons.directions_bike, color: Colors.white)),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          MyHomePage(),
          MyHomePage(),
          MyHomePage(),
        ],
      ),
    );
  }
}
