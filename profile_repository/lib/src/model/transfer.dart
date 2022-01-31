import 'package:json_annotation/json_annotation.dart';

part 'transfer.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Transfer {
  final int? id;
  final String? userId;
  final String? recipientId;
  final String? currency;
  final String? amount;
  final String? transferPaid;
  final String? receivedPaid;
  final String? charges;
  final String? trxRef;
  final int? status;
  final String? createdAt;
  final String? updatedAt;

  const Transfer({
    this.id,
    this.userId,
    this.recipientId,
    this.currency,
    this.amount,
    this.transferPaid,
    this.receivedPaid,
    this.charges,
    this.trxRef,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory Transfer.fromJson(Map<String, dynamic> json) =>
      _$TransferFromJson(json);
}
