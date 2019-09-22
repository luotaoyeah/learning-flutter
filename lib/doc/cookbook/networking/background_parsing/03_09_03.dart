import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/common/article.dart';
import 'package:learning_flutter/common/page.dart';
import 'package:learning_flutter/service/article.service.dart';

/// https://flutter.dev/docs/cookbook/networking/background-parsing
class X030903 extends StatefulWidget {
  @override
  _X030903State createState() => _X030903State();
}

class _X030903State extends State<X030903> {
  Future<Page<Article>> pageFuture;

  @override
  void initState() {
    super.initState();
    this.pageFuture = ArticleService.fetchArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parse JSON In The Background", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Center(
        child: FutureBuilder<Page<Article>>(
          future: pageFuture,
          builder: (BuildContext context, AsyncSnapshot<Page<Article>> snapshot) {
            if (snapshot.hasData) {
              return _buildArticleList(snapshot.data, context);
            } else if (snapshot.hasError) {
              return Text(snapshot.error);
            }

            return CircularProgressIndicator(
              strokeWidth: 1,
            );
          },
        ),
      ),
    );
  }

  Widget _buildArticleList(Page<Article> page, BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        tiles: page.data.map(
          (article) => Container(
            child: ListTile(
              leading: Image.network(
                "http://192.168.1.14:17202/api/picture/file/thumb?fileName=${article.cover.fileName}",
                fit: BoxFit.fill,
              ),
              title: Text(article.title),
            ),
          ),
        ),
        context: context,
      ).toList(),
    );
  }
}
