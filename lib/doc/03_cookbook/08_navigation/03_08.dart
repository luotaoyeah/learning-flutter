import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';

import '02_navigation_basics/03_08_02.dart';

/// https://flutter.dev/docs/cookbook/navigation
class X0308 extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Navigate To A New Screen And Back", widget: X030802()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation", style: TextStyle(letterSpacing: -0.5)),
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
