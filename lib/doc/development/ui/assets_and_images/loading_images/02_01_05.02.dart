import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/assets-and-images#loading-images-1
class X02010502 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loading Images", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Center(
        child: Image(
          image: AssetImage("assets/images/avatar.jpg"),
        ),
      ),
    );
  }
}
