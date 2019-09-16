import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';

import '08_navigation/03_08.dart';

/// https://flutter.dev/docs/cookbook
class X03 extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Navigation", widget: X0308()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cookbook", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          tiles: _menus
              .map((m) => ListTile(
                    title: Text(
                      m.title,
                      style: TextStyle(letterSpacing: -0.5),
                    ),
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(pageBuilder: (x, y, z) => m.widget));
                    },
                  ))
              .toList(),
          context: context,
        ).toList(),
      ),
    );
  }
}
