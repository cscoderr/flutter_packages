import 'package:json_annotation/json_annotation.dart';

part 'top_gainer.g.dart';

@JsonSerializable()
class TopGainer {
  final int? id;
  final String? name;
  final String? code;
  final String? icon;
  final String? status;
  final String? price;
  final String? createdAt;
  final String? updatedAt;
  final String? volume;
  final String? duration;
  final String? priceChangePercent;
  final String? priceChange;
  final String? symbol;
  @JsonKey(name: 'determinant_currency')
  final String? determinantCurrency;

  const TopGainer({
    this.id,
    this.name,
    this.code,
    this.icon,
    this.status,
    this.price,
    this.createdAt,
    this.updatedAt,
    this.volume,
    this.duration,
    this.priceChangePercent,
    this.priceChange,
    this.symbol,
    this.determinantCurrency,
  });

  factory TopGainer.fromJson(Map<String, dynamic> json) =>
      _$TopGainerFromJson(json);
}
