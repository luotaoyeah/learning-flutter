import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/navigation/navigation-basics
class X030802 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigate To A New Screen And Back", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Center(
        child: RaisedButton(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("GOTO NEXT ROUTE"),
              Icon(Icons.arrow_right),
            ],
          ),
          onPressed: () {
            Navigator.push(context, PageRouteBuilder(pageBuilder: (x, y, z) => _SecondRoute()));
          },
        ),
      ),
    );
  }
}

class _SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Center(
        child: RaisedButton(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.arrow_left),
              Text("GOTO BACK"),
            ],
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
