import 'package:flutter/material.dart';

import 'todo.dart';

/// https://flutter.dev/docs/cookbook/navigation/navigate-with-arguments
class X030804 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pass Arguments To A Named Route", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: RaisedButton(
                child: Text("03080401"),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    "/03/08/04/01",
                    arguments: Todo(title: "todo_01", description: "description_01"),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: RaisedButton(
                child: Text("03080402"),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    "/03/08/04/02",
                    arguments: Todo(title: "TODO_02", description: "DESCRIPTION_02"),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
