import 'package:json_annotation/json_annotation.dart';

part 'page.g.dart';

@JsonSerializable(explicitToJson: true)
class Page<T> {
  int totalCount;
  @JsonKey(fromJson: _dataFromJson, toJson: _dataToJson)
  List<T> data;

  Page({this.totalCount, this.data});

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);

  Map<String, dynamic> toJson() => _$PageToJson(this);
}

T _dataFromJson<T>(Map<String, dynamic> input) {
  return input as T;
}

Object _dataToJson<T>(T t) {
  return t;
}
