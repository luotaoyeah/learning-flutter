import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/layout#listview
class X020102010303 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView', style: TextStyle(letterSpacing: -0.5)),
      ),
      body: _buildList(),
    );
  }

  Widget _buildList() {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: <Widget>[
        _buildListTile(title: "一步之遥", subtitle: "姜文", icon: Icons.play_circle_filled),
        Divider(),
        _buildListTile(title: "In The End", subtitle: "Linkin Park", icon: Icons.music_note),
        Divider(),
      ],
    );
  }

  Widget _buildListTile({String title, String subtitle, IconData icon}) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
        size: 38,
      ),
    );
  }
}
