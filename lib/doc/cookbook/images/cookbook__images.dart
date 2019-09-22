import 'package:flutter/material.dart';
import 'package:learning_flutter/common/app_menu.dart';
import 'package:learning_flutter/doc/cookbook/images/cached_images/cookbook__images__cached_images.dart';
import 'package:learning_flutter/doc/cookbook/images/fading_in_images/cookbook__images__fading_in_images.dart';
import 'package:learning_flutter/doc/cookbook/images/network_image/cookbook__images__network_image.dart';

/// https://flutter.dev/docs/cookbook/images
class CookbookImages extends StatelessWidget {
  final List<AppMenu> _menus = [
    AppMenu(title: "Display Images From The Internet", widget: CookbookImagesNetworkImage()),
    AppMenu(title: "Fade In Images With A Placeholder", widget: CookbookImagesFadingInImages()),
    AppMenu(title: "Work With Cached Images", widget: CookbookImagesCachedImages()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images", style: TextStyle(letterSpacing: -0.5)),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          tiles: _menus
              .map((m) => ListTile(
                    title: Text(
                      m.title,
                      style: TextStyle(letterSpacing: -0.5),
                    ),
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(pageBuilder: (x, y, z) => m.widget));
                    },
                  ))
              .toList(),
          context: context,
        ).toList(),
      ),
    );
  }
}
