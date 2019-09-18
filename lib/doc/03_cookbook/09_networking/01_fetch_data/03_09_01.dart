import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/// https://flutter.dev/docs/cookbook/networking/fetch-data
class X030901 extends StatefulWidget {
  @override
  _X030901State createState() => _X030901State();
}

class _X030901State extends State<X030901> {
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
            onPressed: () async {
              await _fetchArticles();
            },
          )
        ],
      ),
    );
  }

  Future<http.Response> _fetchArticles() {
    return http.post("http://192.168.1.14:17202/api/article", body: {});
  }
}
