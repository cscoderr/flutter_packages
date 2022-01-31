import 'package:icontrading_repository/icontrading_repository.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trading_currency.g.dart';

@JsonSerializable()
class TradingCurrency {
  final int? id;
  final String? name;
  final String? code;
  final String? icon;
  final String? status;
  final String? volume;
  final String? duration;
  final String? price;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @JsonKey(name: '24_hours_statistics')
  final Statistics? the24HoursStatistics;
  @JsonKey(name: 'determinant_currency')
  final String? determinantCurrency;

  const TradingCurrency({
    this.id,
    this.name,
    this.code,
    this.icon,
    this.status,
    this.price,
    this.volume,
    this.duration,
    this.createdAt,
    this.updatedAt,
    this.the24HoursStatistics,
    this.determinantCurrency,
  });

  factory TradingCurrency.fromJson(Map<String, dynamic> json) =>
      _$TradingCurrencyFromJson(json);
}
