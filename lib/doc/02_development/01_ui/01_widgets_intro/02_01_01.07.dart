import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro#responding-to-widget-lifecycle-events
class X0201010107 extends StatefulWidget {
  @override
  State<X0201010107> createState() => _X0201010107State();
}

class _X0201010107State extends State<X0201010107> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Responding To Widget Lifecycle Events',
          style: TextStyle(letterSpacing: -0.5),
        ),
      ),
      body: Center(
        child: Text("HELLO"),
      ),
    );
  }

  /// [State] 有一些生命周期函数, 其中两个是 [initState] 和 [dispose],
  /// 分别在创建和销毁的时候执行
  @override
  void initState() {
    super.initState();

    print("initState()");
  }

  @override
  void dispose() {
    print("dispose()");

    super.dispose();
  }
}
