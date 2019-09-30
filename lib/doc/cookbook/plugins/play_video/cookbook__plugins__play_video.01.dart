import 'package:flutter/material.dart';
import 'package:learning_flutter/common/article.dart';

class CookbookPluginsPlayVideo01 extends StatefulWidget {
  final Article article;

  CookbookPluginsPlayVideo01({this.article});

  @override
  _CookbookPluginsPlayVideo01State createState() => _CookbookPluginsPlayVideo01State();
}

class _CookbookPluginsPlayVideo01State extends State<CookbookPluginsPlayVideo01> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.article.title, style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Text("TODO"),
    );
  }
}
