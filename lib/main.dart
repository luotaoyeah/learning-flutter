import 'package:flutter/material.dart';

import 'common/app_menu.dart';
import 'doc/01_get_started/01.dart';
import 'doc/02_development/02.dart';
import 'doc/cookbook/08_navigation/03_named_routes/03_08_03.dart';
import 'doc/cookbook/08_navigation/04_navigate_with_arguments/03_08_04.01.dart';
import 'doc/cookbook/08_navigation/04_navigate_with_arguments/03_08_04.02.dart';
import 'doc/cookbook/cookbook.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LEARNING-FLUTTER',
      theme: ThemeData(
        fontFamily: "simfang",
      ),
      // ignore: missing_return
      onGenerateRoute: (RouteSettings routeSettings) {
        switch (routeSettings.name) {
          case "/":
            return PageRouteBuilder(pageBuilder: (_, __, ___) => Home());
          case "/03/08/03/01":
            return PageRouteBuilder(pageBuilder: (_, __, ___) => X03080301());
          case "/03/08/04/01":
            return PageRouteBuilder(pageBuilder: (_, __, ___) => X03080401(), settings: routeSettings);
          case "/03/08/04/02":
            return PageRouteBuilder(
              pageBuilder: (_, __, ___) => X03080402(
                todo: routeSettings.arguments,
              ),
            );
        }
      },
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final List<AppMenu> _menus = [
    AppMenu(title: "Get Started", widget: X01()),
    AppMenu(title: "Cookbook", widget: Cookbook()),
    AppMenu(title: "Development", widget: X02()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LEARNING-FLUTTER'),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          tiles: _menus.map(
            (m) => ListTile(
              title: Text(
                m.title,
                style: TextStyle(letterSpacing: -0.5),
              ),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (x, y, z) => m.widget,
                  ),
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
