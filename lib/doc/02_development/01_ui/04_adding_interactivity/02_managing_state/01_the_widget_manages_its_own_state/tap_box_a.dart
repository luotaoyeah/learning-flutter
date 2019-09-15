import 'package:flutter/material.dart';

class TapBoxA extends StatefulWidget {
  @override
  State<TapBoxA> createState() => _TapBoxAState();
}

class _TapBoxAState extends State<TapBoxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Container(
          child: Center(
            child: Text(
              _active ? "ACTIVE" : "INACTIVE",
              style: TextStyle(color: Colors.white, fontSize: 32.0),
            ),
          ),
          decoration: BoxDecoration(
            color: _active ? Colors.lightGreen[700] : Colors.grey[600],
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          width: 200,
          height: 200,
        ),
        onTap: _handleTap,
      ),
    );
  }
}
