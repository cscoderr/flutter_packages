import 'package:auth_repository/auth_repository.dart';
import 'package:json_annotation/json_annotation.dart';

part 'save_trade.g.dart';

@JsonSerializable()
class SaveTrade {
  final String? message;
  final SaveTradeData? data;

  const SaveTrade({
    this.message,
    this.data,
  });

  factory SaveTrade.fromJson(Map<String, dynamic> json) =>
      _$SaveTradeFromJson(json);
}

@JsonSerializable()
class SaveTradeData {
  @JsonKey(name: 'user_id')
  final int? userId;
  @JsonKey(name: 'period_id')
  final String? periodId;
  final String? message;
  @JsonKey(name: 'currency_id')
  final String? currencyId;
  @JsonKey(name: 'trade_start_time')
  final String? tradeStartTime;
  @JsonKey(name: 'trade_end_time')
  final String? tradeEndTime;
  @JsonKey(name: 'trade_start_time_stamp')
  final int? tradeStartTimestamp;
  @JsonKey(name: 'trade_end_time_stamp')
  final int? tradeEndTimestamp;
  final double? odd;
  @JsonKey(name: 'order_type')
  final String? orderType;
  final String? amount;
  @JsonKey(name: 'trf_ref')
  final String? trxRef;
  @JsonKey(name: 'txn_id')
  final String? txnId;
  final int? status;
  @JsonKey(name: 'trading_result')
  final int? tradingResult;
  @JsonKey(name: 'updatedt_at')
  final String? updatedAt;
  @JsonKey(name: 'create_at')
  final String? createdAt;
  final int? id;
  final User? user;

  const SaveTradeData({
    this.userId,
    this.periodId,
    this.currencyId,
    this.tradeStartTime,
    this.tradeEndTime,
    this.message,
    this.user,
    this.tradeStartTimestamp,
    this.tradeEndTimestamp,
    this.odd,
    this.orderType,
    this.amount,
    this.trxRef,
    this.txnId,
    this.status,
    this.tradingResult,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  factory SaveTradeData.fromJson(Map<String, dynamic> json) =>
      _$SaveTradeDataFromJson(json);
}
