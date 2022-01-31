// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recharge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recharge _$RechargeFromJson(Map<String, dynamic> json) => Recharge(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => RechargeData.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastPage: json['last_page'] as int?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$RechargeToJson(Recharge instance) => <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'last_page': instance.lastPage,
      'path': instance.path,
      'per_page': instance.perPage,
      'total': instance.total,
    };

RechargeData _$RechargeDataFromJson(Map<String, dynamic> json) => RechargeData(
      id: json['id'] as int?,
      userId: json['user_id'] as String?,
      wallet: json['wallet'] as String?,
      currency: json['currency'] as String?,
      amount: json['amount'] as String?,
      amountPaid: json['amount_paid'] as String?,
      charges: json['charges'] as String?,
      datePaid: json['date_paid'] as String?,
      txnId: json['txn_id'] as String?,
      trxRef: json['trx_ref'] as String?,
      details: json['details'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$RechargeDataToJson(RechargeData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'wallet': instance.wallet,
      'currency': instance.currency,
      'amount': instance.amount,
      'amount_paid': instance.amountPaid,
      'charges': instance.charges,
      'txn_id': instance.txnId,
      'trx_ref': instance.trxRef,
      'details': instance.details,
      'date_paid': instance.datePaid,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
