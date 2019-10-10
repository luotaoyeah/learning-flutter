import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';
import 'package:learning_flutter/doc/development/ui/widgets_intro/bringing_it_all_together/development__ui__widgets_intro__bringing_it_all_together.dart';
import 'package:learning_flutter/doc/development/ui/widgets_intro/changing_widgets_in_response_to_input/development__ui__widgets_intro_05.dart';
import 'package:learning_flutter/doc/development/ui/widgets_intro/development__ui__widgets_intro__hello_world.dart';
import 'package:learning_flutter/doc/development/ui/widgets_intro/development__ui__widgets_intro.02.dart';
import 'package:learning_flutter/doc/development/ui/widgets_intro/development__ui__widgets_intro.03.dart';
import 'package:learning_flutter/doc/development/ui/widgets_intro/development__ui__widgets_intro.04.dart';
import 'package:learning_flutter/doc/development/ui/widgets_intro/development__ui__widgets_intro.07.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro
class DevelopmentUiWidgetsIntro extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: 'Hello World', widget: DevelopmentUiWidgetsIntroHelloWorld()),
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
            (m) => ListTile(
              title: Text(m.title, style: TextStyle(letterSpacing: -0.5)),
              onTap: () => Navigator.of(context).push(
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
