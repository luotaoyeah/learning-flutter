import 'package:json_annotation/json_annotation.dart';

part 'video.g.dart';

@JsonSerializable()
class Video {
  String id;
  String name;
  bool isVR;
  bool is3D;
  String remoteUrl;
  int length;
  String fileName;
  String createdAt;

  Video({this.id, this.name, this.isVR, this.is3D, this.remoteUrl, this.length, this.fileName, this.createdAt});

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
  Map<String, dynamic> toJson() => _$VideoToJson(this);
}
