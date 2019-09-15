import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';

import '01_creating_a_stateful_widget/02_01_04.01.dart';
import '02_managing_state/02_01_04.02.dart';

/// https://flutter.dev/docs/development/ui/interactive
class X020104 extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Creating a stateful widget", widget: X02010401()),
    AppMenu(title: "Managing State", widget: X02010402()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adding Interactivity", style: TextStyle(letterSpacing: -0.5)),
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
