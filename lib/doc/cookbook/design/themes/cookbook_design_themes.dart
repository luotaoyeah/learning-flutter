import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/design/themes
class CookbookDesignThemes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Use Themes To Share Colors And Font Styles", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("foo"),
              onPressed: () {},
            ),
            Theme(
              // 使用 `Theme.of(context)` 获取离当前组件最近的主题,
              // 使用 `ThemeData.copyWith()` 方法复制该主题, 并覆盖某些新的样式
              data: Theme.of(context).copyWith(
                textTheme: TextTheme(
                  button: TextStyle(fontFamily: "monaco"),
                ),
              ),
              child: Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text("bar"),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    child: Text("baz"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Theme(
              // 直接创建一个全新的 `ThemeData` 对象
              data: ThemeData(),
              child: Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text("owen"),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
