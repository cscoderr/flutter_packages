// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'libao_investment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LibaoInvestment _$LibaoInvestmentFromJson(Map<String, dynamic> json) =>
    LibaoInvestment(
      id: json['id'] as int?,
      name: json['name'] as String?,
      duration: json['duration'] as String?,
      durationType: json['duration_type'] as String?,
      roi: json['roi'] as String?,
      roiType: json['roi_type'] as String?,
      description: json['description'] as String?,
      status: json['status'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$LibaoInvestmentToJson(LibaoInvestment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'duration_type': instance.durationType,
      'roi': instance.roi,
      'roi_type': instance.roiType,
      'description': instance.description,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
