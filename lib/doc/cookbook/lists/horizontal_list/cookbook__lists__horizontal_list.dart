import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/lists/horizontal-list
class CookbookListsHorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create A Horizontal List", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            10,
            (index) => Container(
              width: 100,
              margin: const EdgeInsets.only(right: 3),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black54,
                ),
              ),
              child: Center(
                child: Text("${index + 1}"),
              ),
            ),
          ),
        ),
        height: 100,
        padding: const EdgeInsets.only(
          left: 3,
          top: 3,
          right: 0,
          bottom: 3,
        ),
      ),
    );
  }
}
