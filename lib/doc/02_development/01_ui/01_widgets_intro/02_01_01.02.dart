import 'package:flutter/material.dart';

class X0201010102 extends StatelessWidget {
  /// https://flutter.dev/docs/development/ui/widgets-intro#basic-widgets
  X0201010102();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Widgets'),
      ),
      body: Material(
        child: Column(
          children: <Widget>[
            _X01(
              title: Text(
                "MY TITLE",
                style: Theme.of(context).primaryTextTheme.title,
              ),
            ),
            Expanded(
              child: Center(
                child: Text("HELLO　WORLD"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _X01 extends StatelessWidget {
  final Widget title;

  _X01({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: null,
          )
        ],
      ),
    );
  }
}
