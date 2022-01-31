import 'package:json_annotation/json_annotation.dart';

part 'general_settings.g.dart';

@JsonSerializable()
class GeneralSettings {
  @JsonKey(name: 'general_settings')
  final GeneralSettingsClass? generalSettings;
  @JsonKey(name: 'referral_settings')
  final ReferralSettings? referralSettings;

  const GeneralSettings({
    this.generalSettings,
    this.referralSettings,
  });

  factory GeneralSettings.fromJson(Map<String, dynamic> json) =>
      _$GeneralSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$GeneralSettingsToJson(this);
}

@JsonSerializable()
class ReferralSettings {
  @JsonKey(name: 'level_1')
  final String? level1;
  @JsonKey(name: 'level_2')
  final String? level2;
  @JsonKey(name: 'level_3')
  final String? level3;

  ReferralSettings({
    this.level1,
    this.level2,
    this.level3,
  });

  factory ReferralSettings.fromJson(Map<String, dynamic> json) =>
      _$ReferralSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$ReferralSettingsToJson(this);
}

@JsonSerializable()
class GeneralSettingsClass {
  @JsonKey(name: 'app_name')
  final String? appName;
  @JsonKey(name: 'fixed_charge')
  final String? fixedCharge;
  @JsonKey(name: 'percent_charge')
  final String? percentCharge;
  @JsonKey(name: 'base_color')
  final String? baseColor;
  @JsonKey(name: 'secondary_color')
  final String? secondaryColor;
  @JsonKey(name: 'enable_email_verification')
  final int? enableEmailVerification;
  @JsonKey(name: 'enable_sms_verification')
  final int? enableSmsVerification;
  @JsonKey(name: 'enable_registration')
  final int? enableRegistration;
  @JsonKey(name: 'default_currency')
  final String? defaultCurrency;
  @JsonKey(name: 'default_currency_symbol')
  final String? defaultCurrencySymbol;
  @JsonKey(name: 'usdt_wallet')
  final dynamic usdtWallet;
  @JsonKey(name: 'minimum_deposit')
  final String? minimumDeposit;
  @JsonKey(name: 'maximum_deposit')
  final String? maximumDeposit;
  @JsonKey(name: 'minimum_withdraw')
  final String? minimumWithdraw;
  @JsonKey(name: 'maximum_withdraw')
  final String? maximumWithdraw;
  @JsonKey(name: 'minimum_referal_withdraw')
  final String? minimumReferralWithdraw;
  @JsonKey(name: 'maximum_referal_withdraw')
  final String? maximumReferralWithdraw;
  @JsonKey(name: 'withdraw_service_charges')
  final String? withdrawServiceCharges;
  @JsonKey(name: 'service_charges_type')
  final String? serviceChargesType;
  @JsonKey(name: 'transfer_service_charges')
  final String? transferServiceCharges;
  @JsonKey(name: 'transfer_service_charges_type')
  final String? transferServiceChargesType;

  const GeneralSettingsClass({
    this.appName,
    this.fixedCharge,
    this.percentCharge,
    this.baseColor,
    this.secondaryColor,
    this.enableEmailVerification,
    this.enableSmsVerification,
    this.enableRegistration,
    this.defaultCurrency,
    this.defaultCurrencySymbol,
    this.usdtWallet,
    this.minimumDeposit,
    this.maximumReferralWithdraw,
    this.minimumReferralWithdraw,
    this.maximumDeposit,
    this.minimumWithdraw,
    this.maximumWithdraw,
    this.withdrawServiceCharges,
    this.serviceChargesType,
    this.transferServiceCharges,
    this.transferServiceChargesType,
  });

  factory GeneralSettingsClass.fromJson(Map<String, dynamic> json) =>
      _$GeneralSettingsClassFromJson(json);

  Map<String, dynamic> toJson() => _$GeneralSettingsClassToJson(this);
}
