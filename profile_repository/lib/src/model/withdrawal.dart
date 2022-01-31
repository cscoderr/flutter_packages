import 'package:json_annotation/json_annotation.dart';

part 'withdrawal.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Withdrawal {
  final int? currentPage;
  final List<WithdrawalData>? data;
  final int? lastPage;
  final String? path;
  final int? perPage;
  final int? total;

  const Withdrawal({
    this.currentPage,
    this.data,
    this.lastPage,
    this.path,
    this.perPage,
    this.total,
  });

  factory Withdrawal.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class WithdrawalData {
  final String? amount;
  final String? amountPaid;
  final String? charges;
  final String? settlementAmount;
  final String? txnId;
  final String? trxRef;
  final String? createdAt;
  final String? status;

  WithdrawalData({
    this.amount,
    this.amountPaid,
    this.charges,
    this.settlementAmount,
    this.txnId,
    this.trxRef,
    this.createdAt,
    this.status,
  });

  factory WithdrawalData.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalDataFromJson(json);
}
