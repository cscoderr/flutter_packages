// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_gainer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopGainer _$TopGainerFromJson(Map<String, dynamic> json) => TopGainer(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      icon: json['icon'] as String?,
      status: json['status'] as String?,
      price: json['price'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      volume: json['volume'] as String?,
      duration: json['duration'] as String?,
      priceChangePercent: json['priceChangePercent'] as String?,
      priceChange: json['priceChange'] as String?,
      symbol: json['symbol'] as String?,
      determinantCurrency: json['determinant_currency'] as String?,
    );

Map<String, dynamic> _$TopGainerToJson(TopGainer instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'icon': instance.icon,
      'status': instance.status,
      'price': instance.price,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'volume': instance.volume,
      'duration': instance.duration,
      'priceChangePercent': instance.priceChangePercent,
      'priceChange': instance.priceChange,
      'symbol': instance.symbol,
      'determinant_currency': instance.determinantCurrency,
    };
