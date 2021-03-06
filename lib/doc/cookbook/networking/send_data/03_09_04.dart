import 'package:flutter/material.dart';
import 'package:learning_flutter/common/article.dart';
import 'package:learning_flutter/common/page.dart';
import 'package:learning_flutter/service/article.service.dart';

/// https://flutter.dev/docs/cookbook/networking/send-data
class X030904 extends StatefulWidget {
  @override
  _X030904State createState() => _X030904State();
}

class _X030904State extends State<X030904> {
  Future<Page<Article>> pageFuture;
  bool _isArticlesFetching = false;
  int _pageIndex = 1;

  @override
  void initState() {
    super.initState();
    this.pageFuture = ArticleService.fetchArticles().whenComplete(() {
      _isArticlesFetching = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Send Data To The Internet", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Column(
        children: [
          _buildPagesDropdownButton(),
          Expanded(
            child: Center(
              child: FutureBuilder<Page<Article>>(
                future: pageFuture,
                builder: (BuildContext context, AsyncSnapshot<Page<Article>> snapshot) {
                  if (_isArticlesFetching) {
                    return CircularProgressIndicator(strokeWidth: 1);
                  } else if (snapshot.hasData) {
                    return _buildArticleList(snapshot.data, context);
                  } else if (snapshot.hasError) {
                    return Text(snapshot.error);
                  }

                  return CircularProgressIndicator(strokeWidth: 1);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPagesDropdownButton() {
    return Container(
      child: DropdownButton<int>(
        value: _pageIndex,
        isExpanded: true,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 24,
        elevation: 1,
        underline: Container(
          height: 1,
          color: Colors.black26,
        ),
        onChanged: (int newValue) {
          setState(() {
            _isArticlesFetching = true;
            _pageIndex = newValue;
            pageFuture = ArticleService.fetchArticles(pageIndex: _pageIndex).whenComplete(() {
              _isArticlesFetching = false;
            });
          });
        },
        items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9].map<DropdownMenuItem<int>>((int value) {
          return DropdownMenuItem<int>(
            value: value,
            child: Text(
              value.toString(),
              style: TextStyle(fontFamily: 'simfang'),
            ),
          );
        }).toList(),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10),
    );
  }

  Widget _buildArticleList(Page<Article> page, BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        tiles: page.data.map(
          (article) => Container(
            child: ListTile(
              leading: (article.cover.fileName != null && article.cover.fileName.isNotEmpty)
                  ? Image.network(
                      "http://192.168.1.16:17202/api/picture/file/thumb?fileName=${article.cover.fileName}",
                      width: 100,
                      height: article.cover.height * 100 / article.cover.width,
                      fit: BoxFit.fill,
                    )
                  : Image.asset("assets/images/avatar.jpg"),
              title: Text(article.title),
            ),
          ),
        ),
        context: context,
      ).toList(),
    );
  }
}
