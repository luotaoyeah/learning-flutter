import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learning_flutter/common/article.dart';
import 'package:learning_flutter/common/page.dart';
import 'package:learning_flutter/common/result.dart';

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
    this.pageFuture = this._fetchArticles();
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
              this.pageFuture = this._fetchArticles();
            },
          )
        ],
      ),
    );
  }

  Future<Page<Article>> _fetchArticles() async {
    var response = await http.post("http://192.168.1.14:17202/api/article", body: {});

    if (response.statusCode == 200 || response.statusCode == 201) {
      Result<dynamic> _result = Result<dynamic>.fromJson(json.decode(response.body));

      if (!_result.status) {
        throw Exception(_result.message);
      } else {
        Page<dynamic> _page = Page<dynamic>.fromJson(_result.data);

        Page<Article> page = Page<Article>();
        page.totalCount = _page.totalCount;
        page.data = _page.data.map((i) => Article.fromJson(i)).toList(growable: false);

        return page;
      }
    } else {
      throw Exception("fail to fetch articles");
    }
  }
}
