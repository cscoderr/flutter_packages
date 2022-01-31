// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_trading_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentTradingPeriod _$CurrentTradingPeriodFromJson(
        Map<String, dynamic> json) =>
    CurrentTradingPeriod(
      id: json['id'] as int?,
      tradeId: json['trade_id'] as String?,
      startTimestamp: json['start_timestamp'] as int?,
      startRealTime: json['start_real_time'] as String?,
      endTimesStamp: json['end_times_stamp'] as int?,
      endRealTime: json['end_real_time'] as String?,
      duration: json['duration'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      result: json['result'] as String?,
      availableTime: json['available_time'] as String?,
      nextId: json['next_id'] as int?,
      lastIssue: json['last_issue'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      results: json['results'] as String?,
    );

Map<String, dynamic> _$CurrentTradingPeriodToJson(
        CurrentTradingPeriod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'trade_id': instance.tradeId,
      'start_timestamp': instance.startTimestamp,
      'start_real_time': instance.startRealTime,
      'end_times_stamp': instance.endTimesStamp,
      'end_real_time': instance.endRealTime,
      'duration': instance.duration,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'available_time': instance.availableTime,
      'result': instance.result,
      'results': instance.results,
      'last_issue': instance.lastIssue,
      'next_id': instance.nextId,
      'user': instance.user,
    };
