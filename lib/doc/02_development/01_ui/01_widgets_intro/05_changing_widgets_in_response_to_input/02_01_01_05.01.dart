import 'package:flutter/material.dart';

class X0201010501 extends StatefulWidget {
  @override
  State<X0201010501> createState() => _X0201010501State();
}

class _X0201010501State extends State<X0201010501> {
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
