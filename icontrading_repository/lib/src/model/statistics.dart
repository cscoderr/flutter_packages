import 'package:json_annotation/json_annotation.dart';

part 'statistics.g.dart';

@JsonSerializable(disallowUnrecognizedKeys: true)
class Statistics {
  final String? symbol;
  final String? priceChange;
  final String? priceChangePercent;
  final String? weightedAvgPrice;
  final String? prevClosePrice;
  final String? lastPrice;
  final String? lastQty;
  final String? bidPrice;
  final String? bidQty;
  final String? askPrice;
  final String? askQty;
  final String? openPrice;
  final String? highPrice;
  final String? lowPrice;
  final String? volume;
  final String? quoteVolume;
  final int? openTime;
  final int? closeTime;
  final int? firstId;
  final int? lastId;
  final int? count;

  const Statistics({
    this.symbol,
    this.priceChange,
    this.priceChangePercent,
    this.weightedAvgPrice,
    this.prevClosePrice,
    this.lastPrice,
    this.lastQty,
    this.bidPrice,
    this.bidQty,
    this.askPrice,
    this.askQty,
    this.openPrice,
    this.highPrice,
    this.lowPrice,
    this.volume,
    this.quoteVolume,
    this.openTime,
    this.closeTime,
    this.firstId,
    this.lastId,
    this.count,
  });

  factory Statistics.fromJson(Map<String, dynamic> json) =>
      _$StatisticsFromJson(json);
}
