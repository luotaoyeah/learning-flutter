import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/images/cached-images
class CookbookImagesCachedImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Work With Cached Images", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Center(
        child: Container(
          child: CachedNetworkImage(
            imageUrl: 'http://luotao.me/avatar.jpg',
            placeholder: (_, __) => Center(
              child: CircularProgressIndicator(
                strokeWidth: 1,
              ),
            ),
          ),
          margin: const EdgeInsets.all(10),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(1)),
          ),
        ),
      ),
    );
  }
}
