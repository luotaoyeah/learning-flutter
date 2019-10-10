import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro#using-material-components
class DevelopmentUiWidgetsIntroUsingMaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Using Material Components',
          style: TextStyle(letterSpacing: -0.5),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: Center(
        child: Text("HELLO WORLD"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
