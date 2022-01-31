// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      address: json['address'] as String?,
      state: json['state'] as String?,
      zip: json['zip'] as String?,
      country: json['country'],
      city: json['city'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'address': instance.address,
      'state': instance.state,
      'zip': instance.zip,
      'country': instance.country,
      'city': instance.city,
    };
