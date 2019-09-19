import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learning_flutter/common/article.dart';
import 'package:learning_flutter/common/page.dart';
import 'package:learning_flutter/common/result.dart';

/// https://flutter.dev/docs/cookbook/networking/send-data
class X030904 extends StatefulWidget {
  @override
  _X030904State createState() => _X030904State();
}

class _X030904State extends State<X030904> {
  Future<Page<Article>> pageFuture;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    this.pageFuture = this._fetchArticles(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Send Data To The Internet", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(hintText: "页码"),
                ),
              ),
              RaisedButton(
                child: Text("加载"),
                onPressed: () {
                  setState(() {
                    this.pageFuture = this._fetchArticles(int.parse(_controller.text));
                  });
                },
              )
            ],
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
              leading: (article.cover.fileName != null && article.cover.fileName.isNotEmpty)
                  ? Image.network(
                      "http://192.168.1.14:17202/api/picture/file/thumb?fileName=${article.cover.fileName}",
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

  Future<Page<Article>> _fetchArticles(int pageIndex) async {
    var response = await http.post("http://192.168.1.14:17202/api/article", body: {"pageIndex": pageIndex.toString()});

    if (response.statusCode == 200 || response.statusCode == 201) {
      return compute(_parsePage, response.body);
    } else {
      throw Exception("fail to fetch articles");
    }
  }
}

Page<Article> _parsePage(String body) {
  Result<dynamic> _result = Result<dynamic>.fromJson(json.decode(body));

  if (!_result.status) {
    throw Exception(_result.message);
  } else {
    Page<dynamic> _page = Page<dynamic>.fromJson(_result.data);

    Page<Article> page = Page<Article>();
    page.totalCount = _page.totalCount;
    page.data = _page.data.map((i) => Article.fromJson(i)).toList(growable: false);

    return page;
  }
}
