import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';
import 'package:learning_flutter/doc/cookbook/navigation/hero_animations/03_08_01.dart';
import 'package:learning_flutter/doc/cookbook/navigation/named_routes/03_08_03.dart';
import 'package:learning_flutter/doc/cookbook/navigation/navigate_with_arguments/03_08_04.dart';
import 'package:learning_flutter/doc/cookbook/navigation/navigation_basics/03_08_02.dart';
import 'package:learning_flutter/doc/cookbook/navigation/passing_data/03_08_06.dart';
import 'package:learning_flutter/doc/cookbook/navigation/returning_data/03_08_05.dart';

/// https://flutter.dev/docs/cookbook/navigation
class X0308 extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Animate A Widget Across Screens", widget: X030801()),
    AppMenu(title: "Navigate To A New Screen And Back", widget: X030802()),
    AppMenu(title: "Navigate With Named Routes", widget: X030803()),
    AppMenu(title: "Pass Arguments To A Named Route", widget: X030804()),
    AppMenu(title: "Return Data From A Screen", widget: X030805()),
    AppMenu(title: "Send Data To A New Screen", widget: X030806()),
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
