import 'package:json_annotation/json_annotation.dart';

part 'financial.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Financial {
  final int? currentPage;
  final List<FinancialData>? data;
  final int? lastPage;
  final String? path;
  final int? perPage;
  final int? total;

  const Financial({
    this.currentPage,
    this.data,
    this.lastPage,
    this.path,
    this.perPage,
    this.total,
  });

  factory Financial.fromJson(Map<String, dynamic> json) =>
      _$FinancialFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FinancialData {
  final int? id;
  final int? userId;
  final int? walletId;
  final String? amount;
  final String? charge;
  final String? postBalance;
  final String? trxType;
  final String? type;
  final String? trx;
  final String? details;
  final dynamic transactionId;
  final String? createdAt;
  final String? updatedAt;

  FinancialData({
    this.id,
    this.userId,
    this.walletId,
    this.amount,
    this.charge,
    this.postBalance,
    this.trxType,
    this.type,
    this.trx,
    this.details,
    this.transactionId,
    this.createdAt,
    this.updatedAt,
  });

  factory FinancialData.fromJson(Map<String, dynamic> json) =>
      _$FinancialDataFromJson(json);
}
