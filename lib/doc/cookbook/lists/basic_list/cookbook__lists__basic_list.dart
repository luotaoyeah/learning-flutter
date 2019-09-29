import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/lists/basic-list
class CookbookListsBasicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Use Lists", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: <Widget>[
          Divider(),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("dart"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.error),
            title: Text("flutter"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("android"),
          ),
          Divider(),
        ],
      ),
    );
  }
}
