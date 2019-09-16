import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// https://flutter.dev/docs/development/ui/assets-and-images#loading-text-assets
class X02010501 extends StatefulWidget {
  @override
  State<X02010501> createState() => _X02010501State();
}

class _X02010501State extends State<X02010501> {
  String _json = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loading Text Assets", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          RaisedButton(
            child: Text("加载"),
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
          )
        ],
      ),
    );
  }

  void _loadJSON() {
    rootBundle.loadString("assets/files/02_01_05.01.json").then((data) {
      setState(() {
        _json = data;
      });
    });
  }
}
