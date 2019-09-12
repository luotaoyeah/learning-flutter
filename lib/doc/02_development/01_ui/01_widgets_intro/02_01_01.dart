import 'package:flutter/material.dart';

import '../../../../common/app_menu.dart';
import '02_01_01.01.dart';
import '02_01_01.02.dart';
import '02_01_01.03.dart';
import '02_01_01.04.dart';
import '05_changing_widgets_in_response_to_input/02_01_01_05.dart';
import '06_bringing_it_all_together/02_01_01_06.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro
class X02010101 extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: 'Introduction To Widgets', widget: X0201010101()),
    AppMenu(title: 'Basic Widgets', widget: X0201010102()),
    AppMenu(title: 'Using Material Components', widget: X0201010103()),
    AppMenu(title: 'Handling Gestures', widget: X0201010104()),
    AppMenu(title: 'Changing Widgets In Response To Input', widget: X0201010105()),
    AppMenu(title: 'Bringing It All Together', widget: X0201010106())
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
                  (menu) {
                return ListTile(
                  title: Text(menu.title, style: TextStyle(letterSpacing: -0.5)),
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (x, y, z) => menu.widget,
                      ),
                    );
                  },
                );
              },
            ),
            context: context)
            .toList(),
      ),
    );
  }
}
