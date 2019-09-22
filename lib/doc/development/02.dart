import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';
import 'package:learning_flutter/doc/development/data_and_backend/02_02.dart';
import 'package:learning_flutter/doc/development/ui/02_01.dart';

/// https://flutter.dev/docs/development
class X02 extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "User Interface", widget: X0201()),
    AppMenu(title: "Data & Backend", widget: X0202()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Development", style: TextStyle(letterSpacing: -0.5)),
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
