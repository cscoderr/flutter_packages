// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdraw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Withdraw _$WithdrawFromJson(Map<String, dynamic> json) => Withdraw(
      id: json['id'] as int?,
      userId: json['user_id'] as String?,
      currency: json['currency'] as String?,
      wallet: json['wallet'] as String?,
      amount: json['amount'] as String?,
      amountPaid: json['amount_paid'] as String?,
      requestPaid: json['request_paid'],
      datePaid: json['date_paid'],
      charges: json['charges'] as String?,
      txnId: json['txn_id'] as String?,
      statusUrl: json['status_url'],
      trxRef: json['trx_ref'] as String?,
      files: json['files'],
      status: json['status'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$WithdrawToJson(Withdraw instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'currency': instance.currency,
      'wallet': instance.wallet,
      'amount': instance.amount,
      'amount_paid': instance.amountPaid,
      'request_paid': instance.requestPaid,
      'date_paid': instance.datePaid,
      'charges': instance.charges,
      'txn_id': instance.txnId,
      'status_url': instance.statusUrl,
      'trx_ref': instance.trxRef,
      'files': instance.files,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
