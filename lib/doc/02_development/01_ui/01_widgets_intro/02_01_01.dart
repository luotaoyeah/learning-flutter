import 'package:flutter/material.dart';

import '02_01_01.01.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro
class X02010101 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction To Widgets'),
      ),
      body: ListView(
        children: ListTile.divideTiles(tiles: [
          ListTile(
            title: Text("Hello World"),
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (x, y, z) {
                    return X0201010101();
                  },
                ),
              );
            },
          )
        ], context: context)
            .toList(),
      ),
    );
  }
}
