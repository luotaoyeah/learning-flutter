import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';

import '01_fetch_data/03_09_01.dart';
import '03_background_parsing/03_09_03.dart';

/// https://flutter.dev/docs/cookbook#networking
class X0309 extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Fetch Data From The Internet", widget: X030901()),
    AppMenu(title: "Parse JSON In The Background", widget: X030903()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Networking", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          tiles: _menus
              .map(
                (m) => ListTile(
                  title: Text(
                    m.title,
                    style: TextStyle(letterSpacing: -0.5),
                  ),
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(pageBuilder: (x, y, z) => m.widget));
                  },
                ),
              )
              .toList(),
          context: context,
        ).toList(),
      ),
    );
  }
}
