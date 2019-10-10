import 'package:flutter/material.dart';

import 'development__ui__widgets_intro_05.01.dart';
import 'development__ui__widgets_intro_05.02.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro#changing-widgets-in-response-to-input
class X02010105 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Changing Widgets In Response To Input',
          style: TextStyle(letterSpacing: -0.5),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Divider(),
            X0201010501(),
            Divider(),
            X0201010502(),
            Divider(),
          ],
        ),
      ),
    );
  }
}
