import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro#handling-gestures
class X0201010104 extends StatelessWidget {
  X0201010104();

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
        child: _X01(),
      ),
    );
  }
}

class _X01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("CLICK");
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
        height: 32,
        width: 100,
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(3)), color: Colors.green),
      ),
    );
  }
}
