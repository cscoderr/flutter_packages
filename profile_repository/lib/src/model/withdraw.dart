import 'package:json_annotation/json_annotation.dart';

part 'withdraw.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Withdraw {
  final int? id;
  final String? userId;
  final String? currency;
  final String? wallet;
  final String? amount;
  final String? amountPaid;
  final dynamic requestPaid;
  final dynamic datePaid;
  final String? charges;
  final String? txnId;
  final dynamic statusUrl;
  final String? trxRef;
  final dynamic files;
  final int? status;
  final String? createdAt;
  final String? updatedAt;

  const Withdraw({
    this.id,
    this.userId,
    this.currency,
    this.wallet,
    this.amount,
    this.amountPaid,
    this.requestPaid,
    this.datePaid,
    this.charges,
    this.txnId,
    this.statusUrl,
    this.trxRef,
    this.files,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory Withdraw.fromJson(Map<String, dynamic> json) =>
      _$WithdrawFromJson(json);
}
