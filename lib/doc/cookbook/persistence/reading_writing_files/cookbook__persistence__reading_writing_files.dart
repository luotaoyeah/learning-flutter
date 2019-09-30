import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

/// https://flutter.dev/docs/cookbook/persistence/reading-writing-files
class CookbookPersistenceReadingWritingFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Read And Write Files", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: _X01(
        storage: CounterStorage(),
      ),
    );
  }
}

class _X01 extends StatefulWidget {
  final CounterStorage storage;

  _X01({this.storage});

  @override
  State<_X01> createState() => _X01State();
}

class _X01State extends State<_X01> {
  int _counter;

  @override
  void initState() {
    super.initState();

    widget.storage.readCounter().then((data) {
      setState(() {
        _counter = data;
      });
    });
  }

  void _handlePressed() {
    widget.storage.writeCounter(_counter + 1).then((data) {
      setState(() {
        _counter += 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("$_counter"),
        onPressed: _handlePressed,
      ),
    );
  }
}

class CounterStorage {
  Future<String> get _localPath async {
    final Directory directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  /// 从 android studio 中查看到的文件地址: /data/data/me.luotao.learning_flutter/app_flutter/counter.txt
  Future<File> get _localFile async {
    final String path = await _localPath;
    return File("$path/counter.txt");
  }

  Future<File> writeCounter(int counter) async {
    final File file = await _localFile;
    return file.writeAsString("$counter");
  }

  Future<int> readCounter() async {
    try {
      final File file = await _localFile;
      final counterStr = await file.readAsString();
      return int.parse(counterStr);
    } catch (e) {
      return 0;
    }
  }
}
