import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/layout#packing-widgets
class X020102010203 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Packing Widgets', style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.star, color: Colors.red),
            Icon(Icons.star, color: Colors.red),
            Icon(Icons.star, color: Colors.red),
            Icon(Icons.star_border),
            Icon(Icons.star_border),
          ],
        ),
      ),
    );
  }
}
