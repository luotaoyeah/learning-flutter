import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/layout#aligning-widgets
class X020102010201 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aligning Widgets', style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("assets/avatar.jpg"),
              Image.asset("assets/avatar.jpg"),
              Image.asset("assets/avatar.jpg"),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset("assets/avatar.jpg"),
                Image.asset("assets/avatar.jpg"),
                Image.asset("assets/avatar.jpg"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
