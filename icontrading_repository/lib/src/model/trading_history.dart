import 'package:json_annotation/json_annotation.dart';

part 'trading_history.g.dart';

@JsonSerializable()
class TradingHistory {
  @JsonKey(name: 'current_page')
  final int? currentPage;
  final List<TradingHistoryData>? data;
  @JsonKey(name: 'last_page')
  final int? lastPage;
  final String? path;
  @JsonKey(name: 'per_page')
  final int? perPage;
  final int? total;

  const TradingHistory({
    this.currentPage,
    this.data,
    this.lastPage,
    this.path,
    this.perPage,
    this.total,
  });

  factory TradingHistory.fromJson(Map<String, dynamic> json) =>
      _$TradingHistoryFromJson(json);
}

@JsonSerializable()
class TradingHistoryData {
  final int? id;
  @JsonKey(name: 'trade_status')
  final String? tradeStatus;
  @JsonKey(name: 'setlement_time')
  final String? settlementTime;
  @JsonKey(name: 'sum_of_money')
  final String? sumOfMoney;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'order_type')
  final dynamic orderType;
  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'issue_number')
  final String? issueNumber;
  @JsonKey(name: 'trade_number')
  final String? tradeNumber;
  @JsonKey(name: 'result_computation')
  final String? resultComputation;
  @JsonKey(name: 'icon')
  final String? icon;
  @JsonKey(name: 'date')
  final String? date;

  TradingHistoryData({
    this.id,
    this.resultComputation,
    this.orderType,
    this.amount,
    this.icon,
    this.tradeNumber,
    this.issueNumber,
    this.currency,
    this.date,
    this.sumOfMoney,
    this.settlementTime,
    this.tradeStatus,
  });

  factory TradingHistoryData.fromJson(Map<String, dynamic> json) =>
      _$TradingHistoryDataFromJson(json);
}
