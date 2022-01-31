// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataValues _$DataValuesFromJson(Map<String, dynamic> json) => DataValues(
      hasImage: (json['has_image'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$DataValuesToJson(DataValues instance) =>
    <String, dynamic>{
      'has_image': instance.hasImage,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
    };
