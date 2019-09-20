import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/design/fonts
class CookbookDesignFonts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Use A Custom Font", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Center(
        child: Text(
          'TextStyle(fontFamily: "monaco", fontSize: 20);',
          style: TextStyle(fontFamily: "monaco"),
        ),
      ),
    );
  }
}
