import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/navigation/hero-animations
class X030801 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animate A Widget Across Screens", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: GestureDetector(
        child: Hero(
          tag: "imageHero",
          child: Image.asset("assets/images/avatar.jpg"),
        ),
        onTap: () {
          Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_, __, ___) => _SecondRoute()));
        },
      ),
    );
  }
}

class _SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Hero(
            tag: "imageHero",
            child: Image.asset(
              "assets/images/avatar.jpg",
              fit: BoxFit.fill,
              width: 200,
              height: 200,
            ),
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
