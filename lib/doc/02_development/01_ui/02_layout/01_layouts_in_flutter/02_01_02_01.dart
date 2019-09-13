import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';

import '01_lay_out_a_widget/02_01_02_01_01.dart';
import '02_lay_out_multiple_widgets_vertically_and_horizontally/02_01_02_01_02.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro
class X02010201 extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Lay Out A Widget", widget: X0201020101()),
    AppMenu(title: "Lay Out Multiple Widgets Vertically And Horizontally", widget: X0201020102()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layouts In Flutter", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          tiles: _menus.map((m) => ListTile(
                title: Text(m.title, style: TextStyle(letterSpacing: -0.5)),
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (x, y, z) => m.widget,
                    ),
                  );
                },
              )),
          context: context,
        ).toList(),
      ),
    );
  }
}
