import 'package:flutter/material.dart';

class X0201010502 extends StatefulWidget {
  @override
  State<X0201010502> createState() => _X0201010502State();
}

class _X0201010502State extends State<X0201010502> {
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
        children: <Widget>[
          CounterDisplay(
            count: _counter,
          ),
          CounterIncrementor(
            onPressed: _increment,
          ),
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