import 'package:flutter/material.dart';

import '02_01_01.01.dart';
import '02_01_01.02.dart';
import '02_01_01.03.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro
class X02010101 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction To Widgets', style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: ListTile.divideTiles(tiles: [
          ListTile(
            title: Text("Hello World", style: TextStyle(letterSpacing: -0.5)),
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (x, y, z) => X0201010101(),
                ),
              );
            },
          ),
          ListTile(
            title: Text("Basic Widgets", style: TextStyle(letterSpacing: -0.5)),
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (x, y, z) => X0201010102(),
                ),
              );
            },
          ),
          ListTile(
            title: Text("Using Material Components", style: TextStyle(letterSpacing: -0.5)),
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (x, y, z) => X0201010103(),
                ),
              );
            },
          ),
        ], context: context)
            .toList(),
      ),
    );
  }
}
