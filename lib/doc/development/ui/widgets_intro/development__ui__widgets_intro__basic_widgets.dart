import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro#basic-widgets
class DevelopmentUiWidgetsIntroBasicWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Widgets', style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Material(
        child: Column(
          children: <Widget>[
            _MyAppBar(
              title: Text(
                "Basic Widgets",
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

class _MyAppBar extends StatelessWidget {
  final Widget title;

  _MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        color: Colors.blue[400],
        boxShadow: [
          BoxShadow(blurRadius: 3, offset: Offset(0, 3), color: Colors.black12),
        ],
      ),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Expanded(
            child: Container(
              child: title,
              padding: const EdgeInsets.symmetric(horizontal: 16),
            ),
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
