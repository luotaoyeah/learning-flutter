import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/lists/mixed-list
class CookbookListsMixedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Lists With Different Types Of Items", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: _X01(
        items: List<_ListItem>.generate(
          100,
          (index) => index % 6 == 0
              ? _HeadingItem(heading: "HEADING ${index + 1}")
              : _MessageItem(sender: "SENDER ${index + 1}", message: "MESSAGE BODY ${index + 1}"),
        ),
      ),
    );
  }
}

class _X01 extends StatelessWidget {
  final List<_ListItem> items;

  _X01({this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      // ignore: missing_return
      itemBuilder: (context, index) {
        final item = items[index];
        if (item is _HeadingItem) {
          return ListTile(
            title: Text(
              item.heading,
              style: Theme.of(context).textTheme.headline,
            ),
          );
        } else if (item is _MessageItem) {
          return ListTile(
            title: Text(item.sender),
            subtitle: Text(item.message),
          );
        }
      },
    );
  }
}

abstract class _ListItem {}

class _HeadingItem implements _ListItem {
  final String heading;

  _HeadingItem({this.heading});
}

class _MessageItem implements _ListItem {
  final String sender;
  final String message;

  _MessageItem({this.sender, this.message});
}
