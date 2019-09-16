import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/layout#gridview
class X020102010302 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView', style: TextStyle(letterSpacing: -0.5)),
      ),
      body: _buildGrid(),
    );
  }

  Widget _buildGrid() {
    return GridView.extent(
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(30),
    );
  }

  List<Widget> _buildGridTileList(int count) {
    return List.generate(
      count,
      (index) => Container(
        child: Image.asset("assets/images/pic$index.jpg"),
      ),
    );
  }
}
