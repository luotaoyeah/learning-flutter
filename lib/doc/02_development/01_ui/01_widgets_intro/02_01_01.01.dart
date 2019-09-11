import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro#hello-world
class X0201010101 extends StatelessWidget {
  X0201010101();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World', style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Center(
        child: Text(
          "HELLO WORLD",
          style: TextStyle(fontSize: 28),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
