import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var wordPair = WordPair.random();

    return MaterialApp(
        title: 'FLUTTER',
        theme: ThemeData(
            fontFamily: "Segoe UI",
            textTheme: TextTheme(body1: TextStyle(letterSpacing: 0.3))),
        home: Scaffold(
            appBar: AppBar(
              title: Text('我的标题'),
            ),
            body: Center(
              child: Text(wordPair.asPascalCase),
            )));
  }
}
