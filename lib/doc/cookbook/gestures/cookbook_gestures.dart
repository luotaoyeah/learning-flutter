import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';
import 'package:learning_flutter/doc/cookbook/gestures/handling_taps/cookbook__gestures__handling_taps.dart';
import 'package:learning_flutter/doc/cookbook/gestures/ripples/cookbook_gestures_ripples.dart';

/// https://flutter.dev/docs/cookbook/gestures
class CookbookGestures extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Add Material Touch Ripples", widget: CookbookGesturesRipples()),
    AppMenu(title: "Handle Taps", widget: CookbookGesturesHandlingTaps()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestures", style: TextStyle(letterSpacing: -0.5)),
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
