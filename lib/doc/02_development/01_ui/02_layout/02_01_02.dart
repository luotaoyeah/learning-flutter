import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';
import 'package:learning_flutter/doc/02_development/01_ui/02_layout/01_layouts_in_flutter/02_01_02_01.dart';

import '02_tutorial/02_01_02_02.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro
class X020102 extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Layouts In Flutter", widget: X02010201()),
    AppMenu(title: "Tutorial", widget: X02010202()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Building Layouts", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          tiles: _menus.map((m) => ListTile(
                title: Text(m.title, style: TextStyle(letterSpacing: -0.5)),
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(pageBuilder: (x, y, z) => m.widget),
                  );
                },
              )),
          context: context,
        ).toList(),
      ),
    );
  }
}
