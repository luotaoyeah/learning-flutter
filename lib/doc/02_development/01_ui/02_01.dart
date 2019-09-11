import 'package:flutter/material.dart';

import '01_widgets_intro/02_01_01.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro
class X0201 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Interface"),
      ),
      body: ListView(
        children: ListTile.divideTiles(tiles: [
          ListTile(
            title: Text("Introduction To Widgets"),
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(pageBuilder: (x, y, z) {
                  return X02010101();
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
