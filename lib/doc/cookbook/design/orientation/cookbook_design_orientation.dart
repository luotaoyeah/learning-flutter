import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/design/orientation
class CookbookDesignOrientation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update The UI Based On Orientation", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            children: List.generate(
              18,
              (index) => Center(
                child: Text(
                  "${index + 1}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
