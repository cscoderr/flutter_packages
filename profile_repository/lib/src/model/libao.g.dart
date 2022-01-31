// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'libao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Libao _$LibaoFromJson(Map<String, dynamic> json) => Libao(
      totalAsset: json['total_asset'] as int?,
      yuLibao: json['yu_libao'] as int?,
      totalRevenue: json['total_revenue'] as int?,
      yesterRevenue: json['yester_revenue'] as int?,
    );

Map<String, dynamic> _$LibaoToJson(Libao instance) => <String, dynamic>{
      'total_asset': instance.totalAsset,
      'yu_libao': instance.yuLibao,
      'total_revenue': instance.totalRevenue,
      'yester_revenue': instance.yesterRevenue,
    };
