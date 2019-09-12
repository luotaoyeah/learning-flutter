import 'package:flutter/material.dart';
import 'package:learning_flutter/doc/02_development/01_ui/02_layout/01_layouts_in_flutter/02_01_02_01.01.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro
class X02010201 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layouts In Flutter", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          tiles: [
            ListTile(
              title: Text("Lay Out A Widget", style: TextStyle(letterSpacing: -0.5)),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (x, y, z) => X0201020101(),
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
