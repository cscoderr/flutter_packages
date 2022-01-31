// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      countryCode: json['country_code'] as int?,
      mobile: json['mobile'] as String?,
      dialCode: json['dial_code'] as String?,
      refBy: json['ref_by'] as int?,
      balance: json['balance'].toString(),
      image: json['image'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      status: json['status'] as int?,
      ev: json['ev'] as int?,
      sv: json['sv'] as int?,
      verCode: json['ver_code'] as String?,
      verCodeSendAt: json['ver_code_send_at'] as String?,
      ts: json['ts'] as int?,
      tv: json['tv'] as int?,
      tsc: json['tsc'],
      refCode: json['ref_code'] as String?,
      refLink: json['ref_link'] as String?,
      withdrawWallet: json['withdraw_wallet'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'username': instance.username,
      'email': instance.email,
      'country_code': instance.countryCode,
      'mobile': instance.mobile,
      'dial_code': instance.dialCode,
      'ref_by': instance.refBy,
      'balance': instance.balance,
      'image': instance.image,
      'address': instance.address,
      'status': instance.status,
      'ev': instance.ev,
      'sv': instance.sv,
      'ver_code': instance.verCode,
      'ver_code_send_at': instance.verCodeSendAt,
      'ts': instance.ts,
      'tv': instance.tv,
      'tsc': instance.tsc,
      'ref_code': instance.refCode,
      'ref_link': instance.refLink,
      'withdraw_wallet': instance.withdrawWallet,
      'token': instance.token,
    };
