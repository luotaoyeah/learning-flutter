import 'package:flutter/material.dart';

import 'todo.dart';

class X03080402 extends StatelessWidget {
  final Todo todo;

  const X03080402({Key key, this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
