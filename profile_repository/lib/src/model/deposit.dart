import 'package:json_annotation/json_annotation.dart';

part 'deposit.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Deposit {
  final int? userId;
  final String? amount;
  final String? currency;
  final String? trxRef;
  final int? status;
  final String? updatedAt;
  final String? createdAt;
  final int? id;
  final String? wallet;
  final String? txnId;
  final String? statusUrl;
  final String? amountToPay;

  const Deposit({
    this.userId,
    this.amount,
    this.currency,
    this.trxRef,
    this.status,
    this.updatedAt,
    this.createdAt,
    this.id,
    this.wallet,
    this.txnId,
    this.statusUrl,
    this.amountToPay,
  });

  factory Deposit.fromJson(Map<String, dynamic> json) =>
      _$DepositFromJson(json);
}
