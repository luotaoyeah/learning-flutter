import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/layout#stack
class X020102010304 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack', style: TextStyle(letterSpacing: -0.5)),
      ),
      body: _buildStack(),
    );
  }

  Widget _buildStack() {
    return Center(
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/pic0.jpg"),
            radius: 100,
          ),
          Container(
            child: Text(
              "罗韬",
              style: TextStyle(color: Colors.white),
            ),
            padding: const EdgeInsets.fromLTRB(6, 3, 6, 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              color: Colors.black54,
            ),
          )
        ],
        alignment: const Alignment(1, 1),
      ),
    );
  }
}
