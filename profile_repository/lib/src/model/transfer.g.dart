// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transfer _$TransferFromJson(Map<String, dynamic> json) => Transfer(
      id: json['id'] as int?,
      userId: json['user_id'] as String?,
      recipientId: json['recipient_id'] as String?,
      currency: json['currency'] as String?,
      amount: json['amount'] as String?,
      transferPaid: json['transfer_paid'] as String?,
      receivedPaid: json['received_paid'] as String?,
      charges: json['charges'] as String?,
      trxRef: json['trx_ref'] as String?,
      status: json['status'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$TransferToJson(Transfer instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'recipient_id': instance.recipientId,
      'currency': instance.currency,
      'amount': instance.amount,
      'transfer_paid': instance.transferPaid,
      'received_paid': instance.receivedPaid,
      'charges': instance.charges,
      'trx_ref': instance.trxRef,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
