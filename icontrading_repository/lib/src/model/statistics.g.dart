// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Statistics _$StatisticsFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    allowedKeys: const [
      'symbol',
      'priceChange',
      'priceChangePercent',
      'weightedAvgPrice',
      'prevClosePrice',
      'lastPrice',
      'lastQty',
      'bidPrice',
      'bidQty',
      'askPrice',
      'askQty',
      'openPrice',
      'highPrice',
      'lowPrice',
      'volume',
      'quoteVolume',
      'openTime',
      'closeTime',
      'firstId',
      'lastId',
      'count'
    ],
  );
  return Statistics(
    symbol: json['symbol'] as String?,
    priceChange: json['priceChange'] as String?,
    priceChangePercent: json['priceChangePercent'] as String?,
    weightedAvgPrice: json['weightedAvgPrice'] as String?,
    prevClosePrice: json['prevClosePrice'] as String?,
    lastPrice: json['lastPrice'] as String?,
    lastQty: json['lastQty'] as String?,
    bidPrice: json['bidPrice'] as String?,
    bidQty: json['bidQty'] as String?,
    askPrice: json['askPrice'] as String?,
    askQty: json['askQty'] as String?,
    openPrice: json['openPrice'] as String?,
    highPrice: json['highPrice'] as String?,
    lowPrice: json['lowPrice'] as String?,
    volume: json['volume'] as String?,
    quoteVolume: json['quoteVolume'] as String?,
    openTime: json['openTime'] as int?,
    closeTime: json['closeTime'] as int?,
    firstId: json['firstId'] as int?,
    lastId: json['lastId'] as int?,
    count: json['count'] as int?,
  );
}

Map<String, dynamic> _$StatisticsToJson(Statistics instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'priceChange': instance.priceChange,
      'priceChangePercent': instance.priceChangePercent,
      'weightedAvgPrice': instance.weightedAvgPrice,
      'prevClosePrice': instance.prevClosePrice,
      'lastPrice': instance.lastPrice,
      'lastQty': instance.lastQty,
      'bidPrice': instance.bidPrice,
      'bidQty': instance.bidQty,
      'askPrice': instance.askPrice,
      'askQty': instance.askQty,
      'openPrice': instance.openPrice,
      'highPrice': instance.highPrice,
      'lowPrice': instance.lowPrice,
      'volume': instance.volume,
      'quoteVolume': instance.quoteVolume,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'firstId': instance.firstId,
      'lastId': instance.lastId,
      'count': instance.count,
    };
