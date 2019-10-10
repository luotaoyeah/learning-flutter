import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';
import 'package:learning_flutter/doc/development/ui/adding_interactivity/02_01_04.dart';
import 'package:learning_flutter/doc/development/ui/assets_and_images/02_01_05.dart';
import 'package:learning_flutter/doc/development/ui/layout/02_01_02.dart';
import 'package:learning_flutter/doc/development/ui/widgets_intro/development__ui__widgets_intro.dart';

/// https://flutter.dev/docs/development/ui
class DevelopmentUi extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Introduction To Widgets", widget: DevelopmentUiWidgetsIntro()),
    AppMenu(title: "Building Layouts", widget: X020102()),
    AppMenu(title: "Adding Interactivity", widget: X020104()),
    AppMenu(title: "Assets And Images", widget: X020105()),
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
