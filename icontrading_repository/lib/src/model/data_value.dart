import 'package:json_annotation/json_annotation.dart';

part 'data_value.g.dart';

@JsonSerializable()
class DataValues {
  @JsonKey(name: 'has_image')
  final List<String>? hasImage;
  final String? title;
  final String? description;
  final String? image;

  DataValues({
    this.hasImage,
    this.title,
    this.description,
    this.image,
  });

  factory DataValues.fromJson(Map<String, dynamic> json) =>
      _$DataValuesFromJson(json);
}
