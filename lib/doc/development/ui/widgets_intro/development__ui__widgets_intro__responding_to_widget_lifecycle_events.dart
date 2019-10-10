import 'package:flutter/material.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro#responding-to-widget-lifecycle-events
class DevelopmentUiWidgetsIntroRespondingToWidgetLifecycleEvents extends StatefulWidget {
  @override
  _DevelopmentUiWidgetsIntroRespondingToWidgetLifecycleEventsState createState() =>
      _DevelopmentUiWidgetsIntroRespondingToWidgetLifecycleEventsState();
}

class _DevelopmentUiWidgetsIntroRespondingToWidgetLifecycleEventsState
    extends State<DevelopmentUiWidgetsIntroRespondingToWidgetLifecycleEvents> {
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
  void didUpdateWidget(DevelopmentUiWidgetsIntroRespondingToWidgetLifecycleEvents oldWidget) {
    super.didUpdateWidget(oldWidget);

    print("didUpdateWidget()");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    print("didChangeDependencies()");
  }

  @override
  void deactivate() {
    super.deactivate();

    print("deactivate()");
  }

  @override
  void reassemble() {
    super.reassemble();

    print("reassemble()");
  }

  @override
  void dispose() {
    print("dispose()");

    super.dispose();
  }
}
