import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/layout#sizing-widgets
class X020102010202 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sizing Widgets', style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Image.asset("assets/avatar.jpg"),
              ),
              Expanded(
                child: Image.asset("assets/avatar.jpg"),
              ),
              Expanded(
                flex: 2,
                child: Image.asset("assets/avatar.jpg"),
              ),
              Expanded(
                child: Image.asset("assets/avatar.jpg"),
              ),
              Expanded(
                flex: 2,
                child: Image.asset("assets/avatar.jpg"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
