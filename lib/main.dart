import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FLUTTER',
        theme: ThemeData(
          fontFamily: "FangSong",
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('我的标题'),
            ),
            body: Center(
              child: RandomWords(),
            )));
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return Text(WordPair.random().asPascalCase);
  }
}
