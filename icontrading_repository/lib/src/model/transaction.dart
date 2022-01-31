import 'package:icontrading_repository/icontrading_repository.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction.g.dart';

@JsonSerializable()
class Transaction {
  int? id;
  String? name;
  String? code;
  String? icon;
  int? status;
  String? price;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  String? volume;
  String? high;
  String? low;
  @JsonKey(name: 'bid_price')
  String? bidPrice;
  @JsonKey(name: 'bid_qty')
  String? bidQty;
  String? symbol;
  @JsonKey(name: '24_hours_statistics')
  Statistics? the24HoursStatistics;
  @JsonKey(name: 'determinant_currency')
  String? determinantCurrency;

  Transaction({
    this.id,
    this.name,
    this.code,
    this.icon,
    this.status,
    this.price,
    this.createdAt,
    this.updatedAt,
    this.volume,
    this.high,
    this.low,
    this.bidPrice,
    this.bidQty,
    this.symbol,
    this.the24HoursStatistics,
    this.determinantCurrency,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
