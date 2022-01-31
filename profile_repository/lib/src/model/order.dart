import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Order {
  final int? currentPage;
  final List<OrderData>? data;
  final int? lastPage;
  final String? path;
  final int? perPage;
  final int? total;

  const Order({
    this.currentPage,
    this.data,
    this.lastPage,
    this.path,
    this.perPage,
    this.total,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class OrderData {
  final int? id;
  final String? quantity;
  final String? userId;
  final String? currency;
  final String? wallet;
  final String? amount;
  final String? amountToPay;
  final String? amountPaid;
  final String? charges;
  final String? txnId;
  final String? statusUrl;
  final String? trxRef;
  final dynamic datePaid;
  final dynamic files;
  final int? status;
  final String? depositStatus;
  final String? createdAt;
  final String? updatedAt;

  const OrderData({
    this.id,
    this.userId,
    this.quantity,
    this.currency,
    this.wallet,
    this.amount,
    this.amountToPay,
    this.amountPaid,
    this.datePaid,
    this.charges,
    this.txnId,
    this.statusUrl,
    this.trxRef,
    this.files,
    this.status,
    this.depositStatus,
    this.createdAt,
    this.updatedAt,
  });

  factory OrderData.fromJson(Map<String, dynamic> json) =>
      _$OrderDataFromJson(json);
}
