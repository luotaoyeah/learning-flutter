import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';
import 'package:learning_flutter/doc/cookbook/design/snackbars/cookbook_design_snackbars.dart';
import 'package:learning_flutter/doc/cookbook/design/tabs/cookbook_design_tabs.dart';
import 'package:learning_flutter/doc/cookbook/design/themes/cookbook_design_themes.dart';

import 'drawer/cookbook_design_drawer.dart';
import 'fonts/cookbook_design_fonts.dart';
import 'orientation/cookbook_design_orientation.dart';

/// https://flutter.dev/docs/cookbook/design
class CookbookDesign extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Add A Drawer To A Screen", widget: CookbookDesignDrawer()),
    AppMenu(title: "Display A Snackbar", widget: CookbookDesignSnackbars()),
    AppMenu(title: "Update The UI Based On Orientation", widget: CookbookDesignOrientation()),
    AppMenu(title: "Use A Custom Font", widget: CookbookDesignFonts()),
    AppMenu(title: "Use Themes To Share Colors And Font Styles", widget: CookbookDesignThemes()),
    AppMenu(title: "Work With Tabs", widget: CookbookDesignTabs()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Design", style: TextStyle(letterSpacing: -0.5)),
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
