import 'package:icontrading_repository/icontrading_repository.dart';
import 'package:json_annotation/json_annotation.dart';

part 'guide.g.dart';

@JsonSerializable()
class Guide {
  final int? id;
  @JsonKey(name: 'data_keys')
  final String? dataKeys;
  @JsonKey(name: 'data_values')
  final DataValues? dataValues;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  final String? image;

  Guide({
    this.id,
    this.dataKeys,
    this.dataValues,
    this.createdAt,
    this.updatedAt,
    this.image,
  });

  factory Guide.fromJson(Map<String, dynamic> json) => _$GuideFromJson(json);
}
