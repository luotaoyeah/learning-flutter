import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';
import 'package:learning_flutter/doc/cookbook/networking/background_parsing/03_09_03.dart';
import 'package:learning_flutter/doc/cookbook/networking/fetch_data/cookbook__networking__fetch_data.dart';
import 'package:learning_flutter/doc/cookbook/networking/send_data/03_09_04.dart';

/// https://flutter.dev/docs/cookbook#networking
class CookbookNetworking extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Fetch Data From The Internet", widget: CookbookNetworkingFetchData()),
    AppMenu(title: "Parse JSON In The Background", widget: X030903()),
    AppMenu(title: "Send Data To The Internet", widget: X030904()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Networking", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          tiles: _menus
              .map(
                (m) => ListTile(
                  title: Text(
                    m.title,
                    style: TextStyle(letterSpacing: -0.5),
                  ),
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(pageBuilder: (x, y, z) => m.widget));
                  },
                ),
              )
              .toList(),
          context: context,
        ).toList(),
      ),
    );
  }
}
