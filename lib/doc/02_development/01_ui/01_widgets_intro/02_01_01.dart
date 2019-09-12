import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';

import '02_01_01.01.dart';
import '02_01_01.02.dart';
import '02_01_01.03.dart';
import '02_01_01.04.dart';
import '02_01_01.07.dart';
import '05_changing_widgets_in_response_to_input/02_01_01_05.dart';
import '06_bringing_it_all_together/02_01_01_06.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro
class X020101 extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: 'Introduction To Widgets', widget: X02010101()),
    AppMenu(title: 'Basic Widgets', widget: X02010102()),
    AppMenu(title: 'Using Material Components', widget: X02010103()),
    AppMenu(title: 'Handling Gestures', widget: X02010104()),
    AppMenu(title: 'Changing Widgets In Response To Input', widget: X02010105()),
    AppMenu(title: 'Bringing It All Together', widget: X02010106()),
    AppMenu(title: 'Responding To Widget Lifecycle Events', widget: X02010107()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction To Widgets', style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          tiles: _menus.map(
                (m) =>
                ListTile(
                  title: Text(m.title, style: TextStyle(letterSpacing: -0.5)),
                  onTap: () =>
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (x, y, z) => m.widget,
                        ),
                      ),
                ),
          ),
          context: context,
        ).toList(),
      ),
    );
  }
}
