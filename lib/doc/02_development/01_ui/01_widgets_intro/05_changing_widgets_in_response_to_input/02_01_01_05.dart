import 'package:flutter/material.dart';

import '02_01_01_05.01.dart';
import '02_01_01_05.02.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro#changing-widgets-in-response-to-input
class X0201010105 extends StatelessWidget {
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
            X020101010501(),
            Divider(),
            X020101010502(),
            Divider(),
          ],
        ),
      ),
    );
  }
}
