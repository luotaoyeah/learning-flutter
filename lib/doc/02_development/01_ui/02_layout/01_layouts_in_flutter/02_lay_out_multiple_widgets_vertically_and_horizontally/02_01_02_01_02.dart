import 'package:flutter/material.dart';

import '02_01_02_01_02.01.dart';
import '02_01_02_01_02.02.dart';
import '02_01_02_01_02.03.dart';

/// https://flutter.dev/docs/development/ui/layout#lay-out-multiple-widgets-vertically-and-horizontally
class X0201020102 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lay Out Multiple Widgets Vertically And Horizontally", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          tiles: [
            ListTile(
              title: Text("Aligning Widgets", style: TextStyle(letterSpacing: -0.5)),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (x, y, z) => X020102010201(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Sizing Widgets", style: TextStyle(letterSpacing: -0.5)),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (x, y, z) => X020102010202(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Packing Widgets", style: TextStyle(letterSpacing: -0.5)),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (x, y, z) => X020102010203(),
                  ),
                );
              },
            ),
          ],
          context: context,
        ).toList(),
      ),
    );
  }
}
