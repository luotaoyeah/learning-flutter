// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Video _$VideoFromJson(Map<String, dynamic> json) {
  return Video(
    id: json['id'] as String,
    name: json['name'] as String,
    isVR: json['isVR'] as bool,
    is3D: json['is3D'] as bool,
    remoteUrl: json['remoteUrl'] as String,
    length: json['length'] as int,
    fileName: json['fileName'] as String,
    createdAt: json['createdAt'] as String,
  );
}

Map<String, dynamic> _$VideoToJson(Video instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isVR': instance.isVR,
      'is3D': instance.is3D,
      'remoteUrl': instance.remoteUrl,
      'length': instance.length,
      'fileName': instance.fileName,
      'createdAt': instance.createdAt,
    };
