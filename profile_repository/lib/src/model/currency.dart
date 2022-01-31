import 'package:json_annotation/json_annotation.dart';

part 'currency.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Currency {
  final int? isFiat;
  final String? rateBtc;
  final String? lastUpdate;
  final String? txFee;
  final Status? status;
  final String? image;
  final String? name;
  final String? confirms;
  final int? canConvert;
  final List<Capability>? capabilities;
  final Chain? chain;
  final String? contract;
  final String? explorer;
  final int? accepted;

  const Currency({
    this.isFiat,
    this.rateBtc,
    this.lastUpdate,
    this.txFee,
    this.status,
    this.image,
    this.name,
    this.confirms,
    this.canConvert,
    this.capabilities,
    this.chain,
    this.contract,
    this.explorer,
    this.accepted,
  });

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}

enum Capability { WALLET, PAYMENTS, TRANSFERS, CONVERT, DEST_TAG }

enum Chain { ETH, BNB, BNB_BSC, TRX, CELO, ETC }

enum Status { ONLINE, MAINTENANCE }
