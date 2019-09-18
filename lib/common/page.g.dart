// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Page<T> _$PageFromJson<T>(Map<String, dynamic> json) {
  return Page<T>(
    totalCount: json['totalCount'] as int,
    data: _dataFromJson(json['data'] as List),
  );
}

Map<String, dynamic> _$PageToJson<T>(Page<T> instance) => <String, dynamic>{
      'totalCount': instance.totalCount,
      'data': _dataToJson(instance.data),
    };
