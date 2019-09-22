import 'package:flutter/material.dart';

/// https://flutter.dev/docs/cookbook/images/network-image
class CookbookImagesNetworkImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display Images From The Internet", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Center(
        child: Container(
          child: Image.network(
            "http://luotao.me/avatar.jpg",
            fit: BoxFit.fill,
          ),
          margin: const EdgeInsets.all(10),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(1),
            ),
          ),
        ),
      ),
    );
  }
}
