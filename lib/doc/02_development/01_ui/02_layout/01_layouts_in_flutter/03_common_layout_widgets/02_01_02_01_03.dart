import 'package:flutter/material.dart';

import '02_01_02_01_03.01.dart';

/// https://flutter.dev/docs/development/ui/layout#common-layout-widgets
class X0201020103 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Common Layout Widgets", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          tiles: [
            ListTile(
              title: Text("Container", style: TextStyle(letterSpacing: -0.5)),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (x, y, z) => X020102010301(),
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
