import 'package:flutter/material.dart';

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
  final List<Menu> _menus = [Menu("Get Started", X01()), Menu("Development", X02())];

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
              title: Text(m.title, style: TextStyle(letterSpacing: -0.5)),
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (x, y, z) => m.component,
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
