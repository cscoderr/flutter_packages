// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trading_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TradingHistory _$TradingHistoryFromJson(Map<String, dynamic> json) =>
    TradingHistory(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => TradingHistoryData.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastPage: json['last_page'] as int?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$TradingHistoryToJson(TradingHistory instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'last_page': instance.lastPage,
      'path': instance.path,
      'per_page': instance.perPage,
      'total': instance.total,
    };

TradingHistoryData _$TradingHistoryDataFromJson(Map<String, dynamic> json) =>
    TradingHistoryData(
      id: json['id'] as int?,
      resultComputation: json['result_computation'] as String?,
      orderType: json['order_type'],
      amount: json['amount'] as String?,
      icon: json['icon'] as String?,
      tradeNumber: json['trade_number'] as String?,
      issueNumber: json['issue_number'] as String?,
      currency: json['currency'] as String?,
      date: json['date'] as String?,
      sumOfMoney: json['sum_of_money'].toString(),
      settlementTime: json['setlement_time'] as String?,
      tradeStatus: json['trade_status'] as String?,
    );

Map<String, dynamic> _$TradingHistoryDataToJson(TradingHistoryData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'trade_status': instance.tradeStatus,
      'setlement_time': instance.settlementTime,
      'sum_of_money': instance.sumOfMoney,
      'currency': instance.currency,
      'order_type': instance.orderType,
      'amount': instance.amount,
      'issue_number': instance.issueNumber,
      'trade_number': instance.tradeNumber,
      'result_computation': instance.resultComputation,
      'icon': instance.icon,
      'date': instance.date,
    };
