import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/layout/tutorial
class X02010202 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutorial", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Column(
        children: <Widget>[_titleSection],
      ),
    );
  }

  final Widget _titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "Oeschinen Lake Campground",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "Kandersteg, Switzerland",
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              )
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Container(
          child: Text("41"),
          padding: const EdgeInsets.only(left: 3),
        )
      ],
    ),
  );
}
