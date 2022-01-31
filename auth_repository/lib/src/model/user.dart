import 'package:auth_repository/auth_repository.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final int? id;
  final String? firstname;
  final String? lastname;
  final String? username;
  final String? email;
  @JsonKey(name: 'country_code')
  final int? countryCode;
  final String? mobile;
  @JsonKey(name: 'dial_code')
  final String? dialCode;
  @JsonKey(name: 'ref_by')
  final int? refBy;
  final String? balance;
  final String? image;
  final Address? address;
  final int? status;
  final int? ev;
  final int? sv;
  @JsonKey(name: 'ver_code')
  final String? verCode;
  @JsonKey(name: 'ver_code_send_at')
  final String? verCodeSendAt;
  final int? ts;
  final int? tv;
  final dynamic tsc;
  @JsonKey(name: 'ref_code')
  final String? refCode;
  @JsonKey(name: 'ref_link')
  final String? refLink;
  @JsonKey(name: 'withdraw_wallet')
  final String? withdrawWallet;
  final String? token;

  const User({
    this.id,
    this.firstname,
    this.lastname,
    this.username,
    this.email,
    this.countryCode,
    this.mobile,
    this.dialCode,
    this.refBy,
    this.balance,
    this.image,
    this.address,
    this.status,
    this.ev,
    this.sv,
    this.verCode,
    this.verCodeSendAt,
    this.ts,
    this.tv,
    this.tsc,
    this.refCode,
    this.refLink,
    this.withdrawWallet,
    this.token,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
