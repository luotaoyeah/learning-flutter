import 'package:flutter/material.dart';

import 'doc/01_get_started/doc_01.dart';
import 'doc/02_development/01_ui/01_widgets_intro/doc_02_01_01.01.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LEARNING-FLUTTER',
      theme: ThemeData(
        fontFamily: "FangSong",
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
  final List<Menu> _menus = [
    Menu("Get Started", Doc01()),
    Menu("Development", Doc02010101())
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
              title: Text(m.title),
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (x, y, z) => m.component,
                  transitionDuration: const Duration(milliseconds: 0),
                ));
              },
            ),
          ),
          context: context,
        ).toList(),
      ),
    );
  }
}

class Menu {
  String title;
  Widget component;

  Menu(this.title, this.component);
}
