// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_trade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveTrade _$SaveTradeFromJson(Map<String, dynamic> json) => SaveTrade(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SaveTradeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SaveTradeToJson(SaveTrade instance) => <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

SaveTradeData _$SaveTradeDataFromJson(Map<String, dynamic> json) =>
    SaveTradeData(
      userId: json['user_id'] as int?,
      periodId: json['period_id'] as String?,
      currencyId: json['currency_id'] as String?,
      tradeStartTime: json['trade_start_time'] as String?,
      tradeEndTime: json['trade_end_time'] as String?,
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      tradeStartTimestamp: json['trade_start_time_stamp'] as int?,
      tradeEndTimestamp: json['trade_end_time_stamp'] as int?,
      odd: (json['odd'] as num?)?.toDouble(),
      orderType: json['order_type'] as String?,
      amount: json['amount'] as String?,
      trxRef: json['trf_ref'] as String?,
      txnId: json['txn_id'] as String?,
      status: json['status'] as int?,
      tradingResult: json['trading_result'] as int?,
      updatedAt: json['updatedt_at'] as String?,
      createdAt: json['create_at'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$SaveTradeDataToJson(SaveTradeData instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'period_id': instance.periodId,
      'message': instance.message,
      'currency_id': instance.currencyId,
      'trade_start_time': instance.tradeStartTime,
      'trade_end_time': instance.tradeEndTime,
      'trade_start_time_stamp': instance.tradeStartTimestamp,
      'trade_end_time_stamp': instance.tradeEndTimestamp,
      'odd': instance.odd,
      'order_type': instance.orderType,
      'amount': instance.amount,
      'trf_ref': instance.trxRef,
      'txn_id': instance.txnId,
      'status': instance.status,
      'trading_result': instance.tradingResult,
      'updatedt_at': instance.updatedAt,
      'create_at': instance.createdAt,
      'id': instance.id,
      'user': instance.user,
    };
