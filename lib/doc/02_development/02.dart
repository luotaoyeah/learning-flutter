import 'package:flutter/material.dart';

import '01_ui/02_01.dart';

class X02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Development", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: ListTile.divideTiles(tiles: [
          ListTile(
            title: Text("User Interface", style: TextStyle(letterSpacing: -0.5)),
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (x, y, z) {
                    return X0201();
                  },
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
