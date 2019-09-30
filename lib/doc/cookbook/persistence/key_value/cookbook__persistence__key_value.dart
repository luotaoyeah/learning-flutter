import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// https://flutter.dev/docs/cookbook/persistence/key-value
class CookbookPersistenceKeyValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Store Key-Value Data On Disk", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: _X01(),
    );
  }
}

class _X01 extends StatefulWidget {
  @override
  State<_X01> createState() => _X01State();
}

class _X01State extends State<_X01> {
  int _counter;

  @override
  void initState() {
    super.initState();

    SharedPreferences.getInstance().then((sharedPreferences) {
      setState(() {
        _counter = sharedPreferences.getInt("counter") ?? 0;
      });
    });
  }

  void _handlePressed() async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setInt("counter", _counter + 1);

    setState(() {
      _counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("$_counter"),
        onPressed: _handlePressed,
      ),
    );
  }
}
