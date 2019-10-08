import 'package:flutter/material.dart';
import 'package:learning_flutter/common/article.dart';
import 'package:video_player/video_player.dart';

///
/// 错误:    Cleartext HTTP traffic to 192.168.1.16 not permitted
/// 解决方法: https://medium.com/@imstudio/android-8-cleartext-http-traffic-not-permitted-73c1c9e3b803
///
class CookbookPluginsPlayVideo01 extends StatefulWidget {
  final Article article;

  CookbookPluginsPlayVideo01({this.article});

  @override
  _CookbookPluginsPlayVideo01State createState() => _CookbookPluginsPlayVideo01State();
}

class _CookbookPluginsPlayVideo01State extends State<CookbookPluginsPlayVideo01> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller =
        VideoPlayerController.network("http://192.168.1.16:17202/api/video/file?id=${widget.article.videos[0].id}");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.article.title, style: TextStyle(letterSpacing: -0.5)),
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(strokeWidth: 1),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
