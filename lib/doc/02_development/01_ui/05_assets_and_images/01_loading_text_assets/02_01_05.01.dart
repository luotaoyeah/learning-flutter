import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// https://flutter.dev/docs/development/ui/assets-and-images#loading-text-assets
class X02010501 extends StatefulWidget {
  @override
  State<X02010501> createState() => _X02010501State();
}

class _X02010501State extends State<X02010501> {
  String _json = "";
  String _json02 = "";

  @override
  Widget build(BuildContext context) {
    /// 如果可以拿到 `context`, 则推荐使用 `DefaultAssetBundle.of(context)`
    void _loadJSON02() {
      DefaultAssetBundle.of(context).loadString("assets/files/02_01_05.01.json").then((data) {
        setState(() {
          _json02 = data;
        });
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Loading Text Assets", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          RaisedButton(
            child: Text("加载 [ 使用 rootBundle ]"),
            onPressed: _loadJSON,
          ),
          Container(
            child: Text(
              _json,
              style: TextStyle(fontFamily: "courier new"),
            ),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.all(Radius.circular(3)),
            ),
          ),
          Divider(),
          RaisedButton(
            child: Text("加载 [ 使用 DefaultAssetBundle.of(context) ]"),
            onPressed: _loadJSON02,
          ),
          Container(
            child: Text(
              _json02,
              style: TextStyle(fontFamily: "courier new"),
            ),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.all(Radius.circular(3)),
            ),
          ),
        ],
      ),
    );
  }

  /// 如果无法拿到 `context`, 就可以使用 `rootBundle`
  void _loadJSON() {
    rootBundle.loadString("assets/files/02_01_05.01.json").then((data) {
      setState(() {
        _json = data;
      });
    });
  }
}
