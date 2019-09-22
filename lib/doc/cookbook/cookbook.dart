import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';

import 'design/cookbook_design.dart';
import 'navigation/03_08.dart';
import 'networking/03_09.dart';

/// https://flutter.dev/docs/cookbook
class Cookbook extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Design", widget: CookbookDesign()),
    AppMenu(title: "Navigation", widget: X0308()),
    AppMenu(title: "Networking", widget: X0309()),
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
