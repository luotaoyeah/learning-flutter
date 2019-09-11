import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

/// https://flutter.dev/docs/get-started/install
class Doc01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RandomWords();
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final List<WordPair> _suggesstions = <WordPair>[];
  final Set<WordPair> _saved = Set();
  final TextStyle _biggerFont = const TextStyle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GET STARTED'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: _pushSaved,
          )
        ],
      ),
      body: _buildSuggesstions(),
    );
  }

  Widget _buildSuggesstions() {
    return ListView.builder(
        padding: const EdgeInsets.all(0.0),
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

  Widget _buildRow(WordPair pair) {
    final bool alreadySaved = _saved.contains(pair);

    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(PageRouteBuilder(
      pageBuilder: (x, y, z) {
        final Iterable<ListTile> tiles = _saved.map((WordPair wordPair) {
          return ListTile(
            title: Text(
              wordPair.asPascalCase,
              style: _biggerFont,
            ),
          );
        });

        final List<Widget> divided =
            ListTile.divideTiles(context: context, tiles: tiles).toList();

        return Scaffold(
          appBar: AppBar(
            title: Text('收藏'),
          ),
          body: ListView(
            children: divided,
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 0),
    ));
  }
}
