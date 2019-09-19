import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/common/article.dart';
import 'package:learning_flutter/common/page.dart';
import 'package:learning_flutter/service/article.service.dart';

/// https://flutter.dev/docs/cookbook/networking/fetch-data
class X030901 extends StatefulWidget {
  @override
  _X030901State createState() => _X030901State();
}

class _X030901State extends State<X030901> {
  Future<Page<Article>> pageFuture;

  @override
  void initState() {
    super.initState();
    this.pageFuture = ArticleService.fetchArticles(pageIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetch Data From The Internet", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('加载'),
            onPressed: () {
              setState(() {
                this.pageFuture = ArticleService.fetchArticles(pageIndex: 1);
              });
            },
          ),
          Expanded(
            child: Center(
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
          )
        ],
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
