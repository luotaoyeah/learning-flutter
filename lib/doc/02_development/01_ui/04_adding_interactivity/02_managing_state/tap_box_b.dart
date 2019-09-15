import 'package:flutter/material.dart';

class TapBoxB extends StatelessWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  TapBoxB({Key key, this.active, @required this.onChanged}) : super(key: key);

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Container(
          child: Center(
            child: Text(
              active ? "ACTIVE" : "INACTIVE",
              style: TextStyle(color: Colors.white, fontSize: 32.0),
            ),
          ),
          decoration: BoxDecoration(
            color: active ? Colors.lightGreen[700] : Colors.grey[600],
          ),
          width: 200,
          height: 200,
        ),
        onTap: _handleTap,
      ),
    );
  }
}
