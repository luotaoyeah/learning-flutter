import 'package:json_annotation/json_annotation.dart';

part 'result.g.dart';

@JsonSerializable(explicitToJson: true)
class Result<T> {
  bool status;
  String message;
  @JsonKey(fromJson: _dataFromJson, toJson: _dataToJson)
  T data;

  Result({this.status, this.message, this.data});

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

dynamic _dataFromJson(Map<String, dynamic> input) {
  return input;
}

Object _dataToJson<T>(T t) {
  return t;
}
