import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/navigation/named-routes
class X030803 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigate With Named Routes", style: TextStyle(letterSpacing: -0.5)),
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
            Navigator.pushNamed(context, "/03/08/03/01");
          },
        ),
      ),
    );
  }
}

class X03080301 extends StatelessWidget {
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
