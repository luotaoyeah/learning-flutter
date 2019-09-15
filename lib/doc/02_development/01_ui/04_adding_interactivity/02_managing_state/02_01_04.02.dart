import 'package:flutter/material.dart';

import 'tap_box_a.dart';

/// https://flutter.dev/docs/development/ui/interactive#managing-state
class X02010402 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Managing State", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: <Widget>[
          Divider(),
          TapBoxA(),
          Divider(),
        ],
      ),
    );
  }
}
