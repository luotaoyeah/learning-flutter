import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro#handling-gestures
class DevelopmentUiWidgetsIntroHandlingGestures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Handling Gestures',
          style: TextStyle(letterSpacing: -0.5),
        ),
      ),
      body: Center(
        child: _MyButton(),
      ),
    );
  }
}

class _MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).removeCurrentSnackBar();
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'CLICKED',
              style: TextStyle(fontFamily: 'simfang'),
            ),
          ),
        );
      },
      child: Container(
        child: Center(
          child: Text(
            "CLICK　ME",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        padding: const EdgeInsets.all(8),
        height: 36,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          color: Colors.green,
        ),
      ),
    );
  }
}
