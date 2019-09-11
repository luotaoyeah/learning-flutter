import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro#changing-widgets-in-response-to-input
class X0201010105 extends StatelessWidget {
  X0201010105();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Changing Widgets In Response To Input',
          style: TextStyle(letterSpacing: -0.5),
        ),
      ),
      body: _X01(),
    );
  }
}

class _X01 extends StatefulWidget {
  @override
  State<_X01> createState() => _X01State();
}

class _X01State extends State<_X01> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          _counter.toString(),
          style: TextStyle(color: Colors.white),
        ),
        onPressed: _increment,
      ),
    );
  }
}
