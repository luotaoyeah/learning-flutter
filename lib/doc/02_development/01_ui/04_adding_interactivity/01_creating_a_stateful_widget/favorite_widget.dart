import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
        _favoriteCount -= 1;
      } else {
        _isFavorited = true;
        _favoriteCount += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(
            _isFavorited ? Icons.star : Icons.star_border,
            color: Colors.red[500],
          ),
          onPressed: _toggleFavorite,
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text("$_favoriteCount"),
            padding: const EdgeInsets.only(left: 3),
          ),
        )
      ],
    );
  }
}
