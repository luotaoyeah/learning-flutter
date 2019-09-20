import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/design/snackbars
class CookbookDesignSnackbars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display A Snackbar", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: X01(),
    );
  }
}

class X01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("Show SnackBar"),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text(
              "this is a snackbar message",
              style: TextStyle(fontFamily: "simfang"),
            ),
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}
