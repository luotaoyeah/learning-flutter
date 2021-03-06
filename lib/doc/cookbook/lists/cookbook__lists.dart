import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';
import 'package:learning_flutter/doc/cookbook/lists/basic_list/cookbook__lists__basic_list.dart';
import 'package:learning_flutter/doc/cookbook/lists/floating_app_bar/cookbook__lists__floating_app_bar.dart';
import 'package:learning_flutter/doc/cookbook/lists/grid_lists/cookbook__lists__grid_lists.dart';
import 'package:learning_flutter/doc/cookbook/lists/horizontal_list/cookbook__lists__horizontal_list.dart';
import 'package:learning_flutter/doc/cookbook/lists/long_lists/cookbook__lists__long_lists.dart';
import 'package:learning_flutter/doc/cookbook/lists/mixed_list/cookbook__lists__mixed_list.dart';

/// https://flutter.dev/docs/cookbook/lists
class CookbookLists extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Create A Grid List", widget: CookbookListsGridLists()),
    AppMenu(title: "Create A Horizontal List", widget: CookbookListsHorizontalList()),
    AppMenu(title: "Create Lists With Different Types Of Items", widget: CookbookListsMixedList()),
    AppMenu(title: "Place A Floating App Bar Above A List", widget: CookbookListsFloatingAppBar()),
    AppMenu(title: "Use Lists", widget: CookbookListsBasicList()),
    AppMenu(title: "Work With Long Lists", widget: CookbookListsLongLists()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lists", style: TextStyle(letterSpacing: -0.5)),
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
