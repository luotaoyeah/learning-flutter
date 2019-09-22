import 'package:flutter/material.dart';

import 'todo.dart';

/// https://flutter.dev/docs/cookbook/navigation/passing-data
class X030806 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _todos = List.generate(
      5,
      (index) => Todo(
        title: "todo_${index + 1}",
        description: "description_${index + 1}",
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Send Data To A New Screen", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: _todos.length,
                itemBuilder: (BuildContext context, int index) => ListTile(
                  title: Text(_todos[index].title),
                  subtitle: Text(_todos[index].description),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) {
                          // 直接通过构造函数传参
                          return _X03080601(
                            todo: _todos[index],
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
              decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: _todos.length,
                itemBuilder: (BuildContext context, int index) => ListTile(
                    title: Text(_todos[index].title.toUpperCase()),
                    subtitle: Text(_todos[index].description.toUpperCase()),
                    onTap: () {
                      Navigator.push(
                        context,
                        // 通过 `settings` 传参
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => _X03080602(),
                          settings: RouteSettings(arguments: _todos[index]),
                        ),
                      );
                    }),
              ),
              decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
            ),
          )
        ],
      ),
    );
  }
}

class _X03080601 extends StatelessWidget {
  final Todo todo;

  const _X03080601({Key key, this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Center(
        child: Text(todo.description),
      ),
    );
  }
}

class _X03080602 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 通过 `ModalRoute.of(context).settings.arguments` 获取参数
    final Todo todo = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title.toUpperCase()),
      ),
      body: Center(
        child: Text(todo.description.toUpperCase()),
      ),
    );
  }
}
