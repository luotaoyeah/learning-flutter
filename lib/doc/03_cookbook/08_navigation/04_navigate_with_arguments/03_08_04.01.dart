import 'package:flutter/material.dart';

import 'todo.dart';

class X03080401 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Todo todo = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title, style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Center(
        child: Text(todo.description),
      ),
    );
  }
}
