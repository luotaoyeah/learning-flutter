import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';

import '03_json/02_02_03.dart';

/// https://flutter.dev/docs/development/data-and-backend
class X0202 extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "JSON And Serialization", widget: X020203()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data & Backend", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          tiles: _menus.map(
            (menu) => ListTile(
              title: Text(
                menu.title,
                style: TextStyle(letterSpacing: -0.5),
              ),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(pageBuilder: (x, y, z) => menu.widget),
                );
              },
            ),
          ),
          context: context,
        ).toList(),
      ),
    );
  }
}
