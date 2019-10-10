import 'package:flutter/material.dart';

class DevelopmentUiWidgetsIntroChangingWidgetsInResponseToInput02 extends StatefulWidget {
  @override
  _DevelopmentUiWidgetsIntroChangingWidgetsInResponseToInput02State createState() =>
      _DevelopmentUiWidgetsIntroChangingWidgetsInResponseToInput02State();
}

class _DevelopmentUiWidgetsIntroChangingWidgetsInResponseToInput02State
    extends State<DevelopmentUiWidgetsIntroChangingWidgetsInResponseToInput02> {
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
          CounterDisplay(count: _counter),
          CounterIncrementor(onPressed: _increment),
        ],
      ),
    );
  }
}

class CounterDisplay extends StatelessWidget {
  final int count;

  CounterDisplay({this.count});

  @override
  Widget build(BuildContext context) {
    return Text(count.toString());
  }
}

class CounterIncrementor extends StatelessWidget {
  final VoidCallback onPressed;

  CounterIncrementor({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Icon(Icons.add),
      onPressed: onPressed,
    );
  }
}
