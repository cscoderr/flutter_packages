// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Deposit _$DepositFromJson(Map<String, dynamic> json) => Deposit(
      userId: json['user_id'] as int?,
      amount: json['amount'] as String?,
      currency: json['currency'] as String?,
      trxRef: json['trx_ref'] as String?,
      status: json['status'] as int?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as int?,
      wallet: json['wallet'] as String?,
      txnId: json['txn_id'] as String?,
      statusUrl: json['status_url'] as String?,
      amountToPay: json['amount_to_pay'] as String?,
    );

Map<String, dynamic> _$DepositToJson(Deposit instance) => <String, dynamic>{
      'user_id': instance.userId,
      'amount': instance.amount,
      'currency': instance.currency,
      'trx_ref': instance.trxRef,
      'status': instance.status,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
      'wallet': instance.wallet,
      'txn_id': instance.txnId,
      'status_url': instance.statusUrl,
      'amount_to_pay': instance.amountToPay,
    };
