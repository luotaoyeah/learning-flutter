import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/gestures/handling-taps
class CookbookGesturesHandlingTaps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Handle Taps", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Center(
        child: _X01(),
      ),
    );
  }
}

class _X01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Text("CLICK ME"),
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Theme.of(context).buttonColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(3)),
          color: Theme.of(context).buttonColor,
        ),
      ),
      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(
            'CLICKED',
            style: TextStyle(fontFamily: 'simfang'),
          ),
        ));
      },
    );
  }
}
