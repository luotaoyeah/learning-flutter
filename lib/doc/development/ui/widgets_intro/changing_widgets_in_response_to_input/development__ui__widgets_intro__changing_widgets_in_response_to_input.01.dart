import 'package:flutter/material.dart';

class DevelopmentUiWidgetsIntroChangingWidgetsInResponseToInput01 extends StatefulWidget {
  @override
  _DevelopmentUiWidgetsIntroChangingWidgetsInResponseToInput01State createState() =>
      _DevelopmentUiWidgetsIntroChangingWidgetsInResponseToInput01State();
}

class _DevelopmentUiWidgetsIntroChangingWidgetsInResponseToInput01State
    extends State<DevelopmentUiWidgetsIntroChangingWidgetsInResponseToInput01> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(_counter.toString()),
          RaisedButton(
            child: Icon(Icons.add),
            onPressed: _increment,
          ),
        ],
      ),
    );
  }
}
