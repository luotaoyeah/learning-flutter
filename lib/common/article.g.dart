// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return Article(
    id: json['id'] as String,
    title: json['title'] as String,
    remoteUrl: json['remoteUrl'] as String,
    cover: json['cover'] == null
        ? null
        : Picture.fromJson(json['cover'] as Map<String, dynamic>),
    pictures: (json['pictures'] as List)
        ?.map((e) =>
            e == null ? null : Picture.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isVR: json['isVR'] as bool,
    is3D: json['is3D'] as bool,
    type: json['type'] as int,
    trash: json['trash'] as bool,
    favour: json['favour'] as bool,
    createdAt: json['createdAt'] as String,
  );
}

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'remoteUrl': instance.remoteUrl,
      'cover': instance.cover?.toJson(),
      'pictures': instance.pictures?.map((e) => e?.toJson())?.toList(),
      'isVR': instance.isVR,
      'is3D': instance.is3D,
      'type': instance.type,
      'trash': instance.trash,
      'favour': instance.favour,
      'createdAt': instance.createdAt,
    };
