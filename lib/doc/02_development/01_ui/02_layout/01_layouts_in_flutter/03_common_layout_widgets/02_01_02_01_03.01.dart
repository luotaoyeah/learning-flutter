import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/layout#container
class X020102010301 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container', style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black26),
        child: Column(
          children: <Widget>[
            _buildRow(),
            _buildRow(),
          ],
        ),
      ),
    );
  }

  Widget _buildRow() {
    return Row(
      children: <Widget>[
        _buildImage(0),
        _buildImage(1),
      ],
    );
  }

  Widget _buildImage(int index) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black38),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        margin: const EdgeInsets.all(4),
        child: Image.asset("assets/pic${index + 1}.jpg"),
      ),
    );
  }
}
