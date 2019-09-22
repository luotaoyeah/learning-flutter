import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/gestures/dismissible
class CookbookGesturesDismissible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Implement Swipe To Dismiss", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: _X01(),
    );
  }
}

class _X01 extends StatefulWidget {
  @override
  _X01State createState() => _X01State();
}

class _X01State extends State<_X01> {
  final List<String> _items = List.generate(20, (index) => "${index + 1}");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: (BuildContext context, int index) {
        final item = _items[index];

        return Dismissible(
          key: Key(item),
          direction: DismissDirection.startToEnd,
          background: Container(
            color: Colors.red[400],
          ),
          child: Container(
            child: ListTile(
              title: Text(item),
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black54),
            ),
          ),
          onDismissed: (_) {
            setState(() {
              _items.removeAt(index);
            });

            Scaffold.of(context).removeCurrentSnackBar();
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  '$item 删除成功',
                  style: TextStyle(fontFamily: 'simfang'),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
