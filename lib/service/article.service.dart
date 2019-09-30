import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../common/article.dart';
import '../common/page.dart';
import '../common/result.dart';

class ArticleService {
  static final String url = 'http://192.168.1.16:17202';

  ///
  /// 分页加载文章
  ///
  /// - [pageIndex] 当前页码
  ///
  static Future<Page<Article>> fetchArticles({int pageIndex = 1, int pageSize = 10}) async {
    try {
      var response = await http.post("$url/api/article", body: {
        "pageIndex": pageIndex.toString(),
        "pageSize": pageSize.toString(),
      });

      if (response.statusCode == 200 || response.statusCode == 201) {
        return compute(_parsePageOfArticle, response.body);
      } else {
        throw Exception("fail to fetch articles");
      }
    } catch (e) {
      throw e;
    }
  }
}

Page<Article> _parsePageOfArticle(String body) {
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
