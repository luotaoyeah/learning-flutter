import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/lists/long-lists
class CookbookListsLongLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Work With Long Lists", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: _X01(
        items: List<String>.generate(100, (index) => "${index + 1}"),
      ),
    );
  }
}

class _X01 extends StatelessWidget {
  final List<String> items;

  _X01({this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(items[index]),
      ),
    );
  }
}
