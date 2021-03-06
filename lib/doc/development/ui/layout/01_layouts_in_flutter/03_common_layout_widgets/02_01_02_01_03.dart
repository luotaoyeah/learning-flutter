import 'package:flutter/material.dart';

import '02_01_02_01_03.01.dart';
import '02_01_02_01_03.02.dart';
import '02_01_02_01_03.03.dart';
import '02_01_02_01_03.04.dart';
import '02_01_02_01_03.05.dart';

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
            ListTile(
              title: Text("GridView", style: TextStyle(letterSpacing: -0.5)),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (x, y, z) => X020102010302(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("ListView", style: TextStyle(letterSpacing: -0.5)),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (x, y, z) => X020102010303(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Stack", style: TextStyle(letterSpacing: -0.5)),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (x, y, z) => X020102010304(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Card", style: TextStyle(letterSpacing: -0.5)),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (x, y, z) => X020102010305(),
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
