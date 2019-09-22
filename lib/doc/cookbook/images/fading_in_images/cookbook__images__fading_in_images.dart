import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

/// https://flutter.dev/docs/cookbook/images/fading-in-images
class CookbookImagesFadingInImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fade In Images With A Placeholder", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: Center(
        child: Container(
          child: Stack(
            children: <Widget>[
              Center(
                child: CircularProgressIndicator(
                  strokeWidth: 1,
                ),
              ),
              FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: "http://luotao.me/avatar.jpg")
            ],
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
