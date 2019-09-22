import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/gestures/ripples
class CookbookGesturesRipples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Material Touch Ripples", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Center(
        child: InkWell(
          child: Container(
            child: Text(
              "CLICK ME",
            ),
            padding: const EdgeInsets.all(32),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
