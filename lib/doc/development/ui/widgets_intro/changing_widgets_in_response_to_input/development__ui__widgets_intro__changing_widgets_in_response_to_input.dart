import 'package:flutter/material.dart';

import 'development__ui__widgets_intro__changing_widgets_in_response_to_input.01.dart';
import 'development__ui__widgets_intro__changing_widgets_in_response_to_input.02.dart';

/// https://flutter.dev/docs/development/ui/widgets-intro#changing-widgets-in-response-to-input
class DevelopmentUiWidgetsIntroChangingWidgetsInResponseToInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Changing Widgets In Response To Input',
          style: TextStyle(letterSpacing: -0.5),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Divider(),
            DevelopmentUiWidgetsIntroChangingWidgetsInResponseToInput01(),
            Divider(),
            DevelopmentUiWidgetsIntroChangingWidgetsInResponseToInput02(),
            Divider(),
          ],
        ),
      ),
    );
  }
}
