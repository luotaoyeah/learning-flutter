import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/layout#lay-out-a-widget
class X0201020101 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lay Out A Widget', style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Center(
        child: Icon(
          Icons.star,
          color: Colors.red,
          size: 256,
        ),
      ),
    );
  }
}
