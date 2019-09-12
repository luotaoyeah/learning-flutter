import 'package:flutter/material.dart';

import 'common/app_menu.dart';
import 'doc/01_get_started/01.dart';
import 'doc/02_development/02.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LEARNING-FLUTTER',
      theme: ThemeData(
        fontFamily: "simfang",
      ),
      home: DocMenu(),
    );
  }
}

class DocMenu extends StatefulWidget {
  @override
  DocMenuState createState() => DocMenuState();
}

class DocMenuState extends State<DocMenu> {
  final List<AppMenu> _menus = [
    AppMenu(title: "Get Started", widget: X01()),
    AppMenu(title: "Development", widget: X02())
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
