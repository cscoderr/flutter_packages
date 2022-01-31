import 'package:auth_repository/auth_repository.dart';
import 'package:json_annotation/json_annotation.dart';

part 'current_trading_period.g.dart';

@JsonSerializable()
class CurrentTradingPeriod {
  final int? id;
  @JsonKey(name: 'trade_id')
  final String? tradeId;
  @JsonKey(name: 'start_timestamp')
  final int? startTimestamp;
  @JsonKey(name: 'start_real_time')
  final String? startRealTime;
  @JsonKey(name: 'end_times_stamp')
  final int? endTimesStamp;
  @JsonKey(name: 'end_real_time')
  final String? endRealTime;
  final String? duration;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @JsonKey(name: 'available_time')
  final String? availableTime;
  final String? result;
  final String? results;
  @JsonKey(name: 'last_issue')
  final String? lastIssue;
  @JsonKey(name: 'next_id')
  final int? nextId;
  final User? user;

  const CurrentTradingPeriod({
    this.id,
    this.tradeId,
    this.startTimestamp,
    this.startRealTime,
    this.endTimesStamp,
    this.endRealTime,
    this.duration,
    this.createdAt,
    this.updatedAt,
    this.result,
    this.availableTime,
    this.nextId,
    this.lastIssue,
    this.user,
    this.results,
  });

  factory CurrentTradingPeriod.fromJson(Map<String, dynamic> json) =>
      _$CurrentTradingPeriodFromJson(json);
}
