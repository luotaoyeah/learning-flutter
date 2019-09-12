import 'package:flutter/material.dart';

import '02_01_02_01_02.01.dart';

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
          ],
          context: context,
        ).toList(),
      ),
    );
  }
}
