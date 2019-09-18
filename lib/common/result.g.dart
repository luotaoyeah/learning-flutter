// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result<T> _$ResultFromJson<T>(Map<String, dynamic> json) {
  return Result<T>(
    status: json['status'] as bool,
    message: json['message'] as String,
    data: _dataFromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResultToJson<T>(Result<T> instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': _dataToJson(instance.data),
    };
