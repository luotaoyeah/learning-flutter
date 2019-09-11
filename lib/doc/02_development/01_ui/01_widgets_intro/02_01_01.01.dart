import 'package:flutter/material.dart';

class X0201010101 extends StatelessWidget {
  /// https://flutter.dev/docs/development/ui/widgets-intro#hello-world
  X0201010101();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
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
