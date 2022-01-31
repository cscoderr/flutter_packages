import 'package:json_annotation/json_annotation.dart';

part 'recharge.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Recharge {
  final int? currentPage;
  final List<RechargeData>? data;
  final int? lastPage;
  final String? path;
  final int? perPage;
  final int? total;

  const Recharge({
    this.currentPage,
    this.data,
    this.lastPage,
    this.path,
    this.perPage,
    this.total,
  });

  factory Recharge.fromJson(Map<String, dynamic> json) =>
      _$RechargeFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RechargeData {
  final int? id;
  final String? userId;
  final String? wallet;
  final String? currency;
  final String? amount;
  @JsonKey(name: 'amount_paid')
  final String? amountPaid;
  final String? charges;
  @JsonKey(name: 'txn_id')
  final String? txnId;
  @JsonKey(name: 'trx_ref')
  final String? trxRef;
  final String? details;
  @JsonKey(name: 'date_paid')
  final String? datePaid;
  final String? createdAt;
  final String? updatedAt;

  RechargeData({
    this.id,
    this.userId,
    this.wallet,
    this.currency,
    this.amount,
    this.amountPaid,
    this.charges,
    this.datePaid,
    this.txnId,
    this.trxRef,
    this.details,
    this.createdAt,
    this.updatedAt,
  });

  factory RechargeData.fromJson(Map<String, dynamic> json) =>
      _$RechargeDataFromJson(json);
}
