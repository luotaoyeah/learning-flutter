import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';

import '01_loading_text_assets/02_01_05.01.dart';

/// https://flutter.dev/docs/development/ui/assets-and-images
class X020105 extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Loading Text Assets", widget: X02010501()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assets And Images", style: TextStyle(letterSpacing: -0.5)),
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
