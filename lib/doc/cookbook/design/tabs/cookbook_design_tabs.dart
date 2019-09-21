import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/design/tabs
class CookbookDesignTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Work With Tabs", style: TextStyle(letterSpacing: -0.5)),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.directions_bus)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.directions_run)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.directions_bus),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_run),
          ],
        ),
      ),
      length: 3,
    );
  }
}
