import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';
import 'package:learning_flutter/doc/cookbook/design/cookbook_design.dart';
import 'package:learning_flutter/doc/cookbook/gestures/cookbook_gestures.dart';
import 'package:learning_flutter/doc/cookbook/images/cookbook__images.dart';
import 'package:learning_flutter/doc/cookbook/lists/cookbook__lists.dart';
import 'package:learning_flutter/doc/cookbook/navigation/03_08.dart';
import 'package:learning_flutter/doc/cookbook/networking/cookbook__networking.dart';
import 'package:learning_flutter/doc/cookbook/persistence/cookbook__persistence.dart';
import 'package:learning_flutter/doc/cookbook/plugins/cookbook__plugins.dart';

/// https://flutter.dev/docs/cookbook
class Cookbook extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Design", widget: CookbookDesign()),
    AppMenu(title: "Gestures", widget: CookbookGestures()),
    AppMenu(title: "Images", widget: CookbookImages()),
    AppMenu(title: "Lists", widget: CookbookLists()),
    AppMenu(title: "Navigation", widget: X0308()),
    AppMenu(title: "Networking", widget: CookbookNetworking()),
    AppMenu(title: "Persistence", widget: CookbookPersistence()),
    AppMenu(title: "Plugins", widget: CookbookPlugins()),
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
              .map(
                (m) => ListTile(
                  title: Text(
                    m.title,
                    style: TextStyle(letterSpacing: -0.5),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(pageBuilder: (x, y, z) => m.widget),
                    );
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
