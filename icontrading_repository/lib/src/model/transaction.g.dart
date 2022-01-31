// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      icon: json['icon'] as String?,
      status: json['status'] as int?,
      price: json['price'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      volume: json['volume'] as String?,
      high: json['high'] as String?,
      low: json['low'] as String?,
      bidPrice: json['bid_price'] as String?,
      bidQty: json['bid_qty'] as String?,
      symbol: json['symbol'] as String?,
      the24HoursStatistics: json['24_hours_statistics'] == null
          ? null
          : Statistics.fromJson(
              json['24_hours_statistics'] as Map<String, dynamic>),
      determinantCurrency: json['determinant_currency'] as String?,
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'icon': instance.icon,
      'status': instance.status,
      'price': instance.price,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'volume': instance.volume,
      'high': instance.high,
      'low': instance.low,
      'bid_price': instance.bidPrice,
      'bid_qty': instance.bidQty,
      'symbol': instance.symbol,
      '24_hours_statistics': instance.the24HoursStatistics,
      'determinant_currency': instance.determinantCurrency,
    };
