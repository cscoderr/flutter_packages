// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trading_currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TradingCurrency _$TradingCurrencyFromJson(Map<String, dynamic> json) =>
    TradingCurrency(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      icon: json['icon'] as String?,
      status: json['status'] as String?,
      price: json['price'] as String?,
      volume: json['volume'] as String?,
      duration: json['duration'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      the24HoursStatistics: json['24_hours_statistics'] == null
          ? null
          : Statistics.fromJson(
              json['24_hours_statistics'] as Map<String, dynamic>),
      determinantCurrency: json['determinant_currency'] as String?,
    );

Map<String, dynamic> _$TradingCurrencyToJson(TradingCurrency instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'icon': instance.icon,
      'status': instance.status,
      'volume': instance.volume,
      'duration': instance.duration,
      'price': instance.price,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      '24_hours_statistics': instance.the24HoursStatistics,
      'determinant_currency': instance.determinantCurrency,
    };
