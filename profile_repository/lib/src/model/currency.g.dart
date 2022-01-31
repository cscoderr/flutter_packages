// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Currency _$CurrencyFromJson(Map<String, dynamic> json) => Currency(
      isFiat: json['is_fiat'] as int?,
      rateBtc: json['rate_btc'] as String?,
      lastUpdate: json['last_update'] as String?,
      txFee: json['tx_fee'] as String?,
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      image: json['image'] as String?,
      name: json['name'] as String?,
      confirms: json['confirms'] as String?,
      canConvert: json['can_convert'] as int?,
      capabilities: (json['capabilities'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$CapabilityEnumMap, e))
          .toList(),
      chain: $enumDecodeNullable(_$ChainEnumMap, json['chain']),
      contract: json['contract'] as String?,
      explorer: json['explorer'] as String?,
      accepted: json['accepted'] as int?,
    );

Map<String, dynamic> _$CurrencyToJson(Currency instance) => <String, dynamic>{
      'is_fiat': instance.isFiat,
      'rate_btc': instance.rateBtc,
      'last_update': instance.lastUpdate,
      'tx_fee': instance.txFee,
      'status': _$StatusEnumMap[instance.status],
      'image': instance.image,
      'name': instance.name,
      'confirms': instance.confirms,
      'can_convert': instance.canConvert,
      'capabilities':
          instance.capabilities?.map((e) => _$CapabilityEnumMap[e]).toList(),
      'chain': _$ChainEnumMap[instance.chain],
      'contract': instance.contract,
      'explorer': instance.explorer,
      'accepted': instance.accepted,
    };

const _$StatusEnumMap = {
  Status.ONLINE: 'ONLINE',
  Status.MAINTENANCE: 'MAINTENANCE',
};

const _$CapabilityEnumMap = {
  Capability.WALLET: 'WALLET',
  Capability.PAYMENTS: 'PAYMENTS',
  Capability.TRANSFERS: 'TRANSFERS',
  Capability.CONVERT: 'CONVERT',
  Capability.DEST_TAG: 'DEST_TAG',
};

const _$ChainEnumMap = {
  Chain.ETH: 'ETH',
  Chain.BNB: 'BNB',
  Chain.BNB_BSC: 'BNB_BSC',
  Chain.TRX: 'TRX',
  Chain.CELO: 'CELO',
  Chain.ETC: 'ETC',
};
