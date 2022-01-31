// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guide.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Guide _$GuideFromJson(Map<String, dynamic> json) => Guide(
      id: json['id'] as int?,
      dataKeys: json['data_keys'] as String?,
      dataValues: json['data_values'] == null
          ? null
          : DataValues.fromJson(json['data_values'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$GuideToJson(Guide instance) => <String, dynamic>{
      'id': instance.id,
      'data_keys': instance.dataKeys,
      'data_values': instance.dataValues,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'image': instance.image,
    };
