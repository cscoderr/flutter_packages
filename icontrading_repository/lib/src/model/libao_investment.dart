import 'package:json_annotation/json_annotation.dart';

part 'libao_investment.g.dart';

@JsonSerializable()
class LibaoInvestment {
  int? id;
  String? name;
  String? duration;
  @JsonKey(name: 'duration_type')
  String? durationType;
  String? roi;
  @JsonKey(name: 'roi_type')
  String? roiType;
  String? description;
  int? status;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  LibaoInvestment({
    this.id,
    this.name,
    this.duration,
    this.durationType,
    this.roi,
    this.roiType,
    this.description,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory LibaoInvestment.fromJson(Map<String, dynamic> json) =>
      _$LibaoInvestmentFromJson(json);
}
