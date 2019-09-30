import 'package:json_annotation/json_annotation.dart';
import 'package:learning_flutter/common/picture.dart';
import 'package:learning_flutter/common/video.dart';

part 'article.g.dart';

@JsonSerializable(explicitToJson: true)
class Article {
  String id;
  String title;
  String remoteUrl;
  Picture cover;
  List<Picture> pictures;
  List<Video> videos;
  bool isVR;
  bool is3D;
  int type;
  bool trash;
  bool favour;
  String createdAt;

  Article(
      {this.id,
      this.title,
      this.remoteUrl,
      this.cover,
      this.pictures,
      this.videos,
      this.isVR,
      this.is3D,
      this.type,
      this.trash,
      this.favour,
      this.createdAt});

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
