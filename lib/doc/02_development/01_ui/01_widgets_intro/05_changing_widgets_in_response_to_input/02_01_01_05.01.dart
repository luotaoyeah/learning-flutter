import 'package:flutter/material.dart';

class X020101010501 extends StatefulWidget {
  @override
  State<X020101010501> createState() => _X020101010501State();
}

class _X020101010501State extends State<X020101010501> {
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
