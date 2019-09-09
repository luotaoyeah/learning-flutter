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
        home: RandomWords());
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _suggesstions = <WordPair>[];
  final _fontStyle = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('随机单词'),
        ),
        body: _buildSuggesstions());
  }

  Widget _buildSuggesstions() {
    return ListView.builder(
        padding: const EdgeInsets.all(5.0),
        itemBuilder: (context, i) {
          if (i.isOdd) {
            return Divider();
          }

          final index = i ~/ 2;
          if (index >= _suggesstions.length) {
            _suggesstions.addAll(generateWordPairs().take(10));
          }

          return _buildRow(_suggesstions[index]);
        });
  }

  Widget _buildRow(WordPair suggesstion) {
    return ListTile(
      title: Text(
        suggesstion.asPascalCase,
        style: _fontStyle,
      ),
    );
  }
}
