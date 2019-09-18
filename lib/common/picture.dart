import 'package:json_annotation/json_annotation.dart';

part 'picture.g.dart';

@JsonSerializable()
class Picture {
  String id;
  String name;
  String remoteUrl;
  double width;
  double height;
  int length;
  String fileName;
  String createdAt;

  Picture({this.id, this.name, this.remoteUrl, this.width, this.height, this.length, this.fileName, this.createdAt});

  factory Picture.fromJson(Map<String, dynamic> json) => _$PictureFromJson(json);
  Map<String, dynamic> toJson() => _$PictureToJson(this);
}
