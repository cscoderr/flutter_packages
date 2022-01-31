// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Financial _$FinancialFromJson(Map<String, dynamic> json) => Financial(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => FinancialData.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastPage: json['last_page'] as int?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$FinancialToJson(Financial instance) => <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'last_page': instance.lastPage,
      'path': instance.path,
      'per_page': instance.perPage,
      'total': instance.total,
    };

FinancialData _$FinancialDataFromJson(Map<String, dynamic> json) =>
    FinancialData(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      walletId: json['wallet_id'] as int?,
      amount: json['amount'] as String?,
      charge: json['charge'] as String?,
      postBalance: json['post_balance'] as String?,
      trxType: json['trx_type'] as String?,
      type: json['type'] as String?,
      trx: json['trx'] as String?,
      details: json['details'] as String?,
      transactionId: json['transaction_id'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$FinancialDataToJson(FinancialData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'wallet_id': instance.walletId,
      'amount': instance.amount,
      'charge': instance.charge,
      'post_balance': instance.postBalance,
      'trx_type': instance.trxType,
      'type': instance.type,
      'trx': instance.trx,
      'details': instance.details,
      'transaction_id': instance.transactionId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
