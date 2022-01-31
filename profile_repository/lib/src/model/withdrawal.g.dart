// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Withdrawal _$WithdrawalFromJson(Map<String, dynamic> json) => Withdrawal(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => WithdrawalData.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastPage: json['last_page'] as int?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$WithdrawalToJson(Withdrawal instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'last_page': instance.lastPage,
      'path': instance.path,
      'per_page': instance.perPage,
      'total': instance.total,
    };

WithdrawalData _$WithdrawalDataFromJson(Map<String, dynamic> json) =>
    WithdrawalData(
      amount: json['amount'] as String?,
      amountPaid: json['amount_paid'] as String?,
      charges: json['charges'] as String?,
      settlementAmount: json['settlement_amount'] as String?,
      txnId: json['txn_id'] as String?,
      trxRef: json['trx_ref'] as String?,
      createdAt: json['created_at'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$WithdrawalDataToJson(WithdrawalData instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'amount_paid': instance.amountPaid,
      'charges': instance.charges,
      'settlement_amount': instance.settlementAmount,
      'txn_id': instance.txnId,
      'trx_ref': instance.trxRef,
      'created_at': instance.createdAt,
      'status': instance.status,
    };
