import 'package:flutter/material.dart';

class TapBoxC extends StatefulWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  TapBoxC({Key key, this.active, @required this.onChanged}) : super(key: key);

  void _handleTap() {
    onChanged(!active);
  }

  @override
  State<TapBoxC> createState() => _TapBoxCState();
}

class _TapBoxCState extends State<TapBoxC> {
  bool _highlight = false;

  void _handlTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handlTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handlTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Container(
          child: Center(
            child: Text(
              widget.active ? "ACTIVE" : "INACTIVE",
              style: TextStyle(color: Colors.white, fontSize: 32.0),
            ),
          ),
          decoration: BoxDecoration(
            color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: _highlight
                ? Border.all(
                    color: Colors.red[700],
                    width: 5.0,
                  )
                : null,
          ),
          width: 200,
          height: 200,
        ),
        onTapDown: _handlTapDown,
        onTapUp: _handlTapUp,
        onTap: widget._handleTap,
        onTapCancel: _handlTapCancel,
      ),
    );
  }
}
