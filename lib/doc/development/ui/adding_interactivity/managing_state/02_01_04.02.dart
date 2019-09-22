import 'package:flutter/material.dart';
import 'package:learning_flutter/doc/development/ui/adding_interactivity/managing_state/a_mix_and_match_approach/02_01_04.02.03.dart';
import 'package:learning_flutter/doc/development/ui/adding_interactivity/managing_state/the_parent_widget_manages_the_widgets_state/02_01_04.02.02.dart';
import 'package:learning_flutter/doc/development/ui/adding_interactivity/managing_state/the_widget_manages_its_own_state/02_01_04.02.01.dart';

/// https://flutter.dev/docs/development/ui/interactive#managing-state
class X02010402 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Managing State", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: <Widget>[
          Divider(),
          X0201040201(),
          Divider(),
          X0201040202(),
          Divider(),
          X0201040203(),
          Divider(),
        ],
      ),
    );
  }
}
