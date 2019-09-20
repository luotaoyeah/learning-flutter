import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/design/drawer
class CookbookDesignDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add A Drawer To A Screen", style: TextStyle(letterSpacing: -0.5)),
      ),
      drawer: Drawer(
        elevation: 16.0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              duration: const Duration(milliseconds: 250),
              child: Text(
                "标题",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text("文章"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("图片"),
            )
          ],
        ),
      ),
    );
  }
}
