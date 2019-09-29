import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/lists/floating-app-bar
class CookbookListsFloatingAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("Place A Floating App Bar Above A List", style: TextStyle(letterSpacing: -0.5)),
            floating: true,
            flexibleSpace: Placeholder(),
            expandedHeight: 200,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                title: Text("${index + 1}"),
              ),
              childCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
