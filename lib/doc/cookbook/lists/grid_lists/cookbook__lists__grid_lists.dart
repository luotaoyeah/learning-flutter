import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/lists/grid-lists
class CookbookListsGridLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create A Grid List", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 3,
          top: 3,
          right: 3,
          bottom: 3,
        ),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
          children: List.generate(
            20,
            (index) => Container(
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
      ),
    );
  }
}
