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
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    this.pageFuture = ArticleService.fetchArticles();
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
                    this.pageFuture = ArticleService.fetchArticles(pageIndex: int.parse(_controller.text));
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
}
