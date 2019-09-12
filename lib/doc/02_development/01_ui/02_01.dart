import 'package:flutter/material.dart';

import '01_widgets_intro/02_01_01.dart';
import '02_layout/02_01_02.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro
class X0201 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Interface", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: ListTile.divideTiles(tiles: [
          ListTile(
            title: Text("Introduction To Widgets", style: TextStyle(letterSpacing: -0.5)),
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(pageBuilder: (x, y, z) {
                  return X020101();
                }),
              );
            },
          ),
          ListTile(
            title: Text("Building Layouts", style: TextStyle(letterSpacing: -0.5)),
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(pageBuilder: (x, y, z) {
                  return X020102();
                }),
              );
            },
          ),
        ], context: context)
            .toList(),
      ),
    );
  }
}
