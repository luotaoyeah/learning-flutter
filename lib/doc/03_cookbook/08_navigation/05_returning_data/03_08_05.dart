import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/navigation/returning-data
class X030805 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Return Data From A Screen", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Center(
        child: _SelectionButton(),
      ),
    );
  }
}

class _SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("SELECT"),
      onPressed: () async {
        // `Navigator.push()` 方法的返回值就是路由返回的数据
        String result = await Navigator.of(context).push(
          PageRouteBuilder(pageBuilder: (_, __, ___) => _SelectionScreen()),
        );

        Scaffold.of(context)
          ..removeCurrentSnackBar()
          ..showSnackBar(SnackBar(
            content: Text(
              result,
              style: TextStyle(fontFamily: "simfang"),
            ),
          ));
      },
    );
  }
}

class _SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("选择"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: RaisedButton(
                child: Text(
                  "YES",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
                onPressed: () {
                  // `Navigator.pop()` 方法的第二个参数, 用来回传数据
                  Navigator.pop(context, "YES");
                },
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: RaisedButton(
                child: Text(
                  "NO",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
                onPressed: () {
                  Navigator.pop(context, "NO");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
