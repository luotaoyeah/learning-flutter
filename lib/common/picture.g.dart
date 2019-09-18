// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Picture _$PictureFromJson(Map<String, dynamic> json) {
  return Picture(
    id: json['id'] as String,
    name: json['name'] as String,
    remoteUrl: json['remoteUrl'] as String,
    width: (json['width'] as num)?.toDouble(),
    height: (json['height'] as num)?.toDouble(),
    length: json['length'] as int,
    fileName: json['fileName'] as String,
    createdAt: json['createdAt'] as String,
  );
}

Map<String, dynamic> _$PictureToJson(Picture instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'remoteUrl': instance.remoteUrl,
      'width': instance.width,
      'height': instance.height,
      'length': instance.length,
      'fileName': instance.fileName,
      'createdAt': instance.createdAt,
    };
