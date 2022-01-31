// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => OrderData.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastPage: json['last_page'] as int?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'last_page': instance.lastPage,
      'path': instance.path,
      'per_page': instance.perPage,
      'total': instance.total,
    };

OrderData _$OrderDataFromJson(Map<String, dynamic> json) => OrderData(
      id: json['id'] as int?,
      userId: json['user_id'] as String?,
      quantity: json['quantity'] as String?,
      currency: json['currency'] as String?,
      wallet: json['wallet'] as String?,
      amount: json['amount'] as String?,
      amountToPay: json['amount_to_pay'] as String?,
      amountPaid: json['amount_paid'] as String?,
      datePaid: json['date_paid'],
      charges: json['charges'] as String?,
      txnId: json['txn_id'] as String?,
      statusUrl: json['status_url'] as String?,
      trxRef: json['trx_ref'] as String?,
      files: json['files'],
      status: json['status'] as int?,
      depositStatus: json['deposit_status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$OrderDataToJson(OrderData instance) => <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'user_id': instance.userId,
      'currency': instance.currency,
      'wallet': instance.wallet,
      'amount': instance.amount,
      'amount_to_pay': instance.amountToPay,
      'amount_paid': instance.amountPaid,
      'charges': instance.charges,
      'txn_id': instance.txnId,
      'status_url': instance.statusUrl,
      'trx_ref': instance.trxRef,
      'date_paid': instance.datePaid,
      'files': instance.files,
      'status': instance.status,
      'deposit_status': instance.depositStatus,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
