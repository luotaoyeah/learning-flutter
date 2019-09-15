import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';

import '01_widgets_intro/02_01_01.dart';
import '02_layout/02_01_02.dart';
import '04_adding_interactivity/02_01_04.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro
class X0201 extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Introduction To Widgets", widget: X020101()),
    AppMenu(title: "Building Layouts", widget: X020102()),
    AppMenu(title: "Adding Interactivity", widget: X020104()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Interface", style: TextStyle(letterSpacing: -0.5)),
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
