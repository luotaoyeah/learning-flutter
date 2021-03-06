import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';
import 'package:learning_flutter/doc/cookbook/persistence/key_value/cookbook__persistence__key_value.dart';
import 'package:learning_flutter/doc/cookbook/persistence/reading_writing_files/cookbook__persistence__reading_writing_files.dart';
import 'package:learning_flutter/doc/cookbook/persistence/sqlite/cookbook__persistence__sqlite.dart';

/// https://flutter.dev/docs/cookbook/persistence
class CookbookPersistence extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Persist Data With SQLite", widget: CookbookPersistenceSqlite()),
    AppMenu(title: "Read And Write Files", widget: CookbookPersistenceReadingWritingFiles()),
    AppMenu(title: "Store Key-Value Data On Disk", widget: CookbookPersistenceKeyValue()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persistence", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          tiles: _menus
              .map((m) => ListTile(
                    title: Text(
                      m.title,
                      style: TextStyle(letterSpacing: -0.5),
                    ),
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(pageBuilder: (x, y, z) => m.widget));
                    },
                  ))
              .toList(),
          context: context,
        ).toList(),
      ),
    );
  }
}
