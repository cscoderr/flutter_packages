// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeneralSettings _$GeneralSettingsFromJson(Map<String, dynamic> json) =>
    GeneralSettings(
      generalSettings: json['general_settings'] == null
          ? null
          : GeneralSettingsClass.fromJson(
              json['general_settings'] as Map<String, dynamic>),
      referralSettings: json['referral_settings'] == null
          ? null
          : ReferralSettings.fromJson(
              json['referral_settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeneralSettingsToJson(GeneralSettings instance) =>
    <String, dynamic>{
      'general_settings': instance.generalSettings,
      'referral_settings': instance.referralSettings,
    };

ReferralSettings _$ReferralSettingsFromJson(Map<String, dynamic> json) =>
    ReferralSettings(
      level1: json['level_1'] as String?,
      level2: json['level_2'] as String?,
      level3: json['level_3'] as String?,
    );

Map<String, dynamic> _$ReferralSettingsToJson(ReferralSettings instance) =>
    <String, dynamic>{
      'level_1': instance.level1,
      'level_2': instance.level2,
      'level_3': instance.level3,
    };

GeneralSettingsClass _$GeneralSettingsClassFromJson(
        Map<String, dynamic> json) =>
    GeneralSettingsClass(
      appName: json['app_name'] as String?,
      fixedCharge: json['fixed_charge'] as String?,
      percentCharge: json['percent_charge'] as String?,
      baseColor: json['base_color'] as String?,
      secondaryColor: json['secondary_color'] as String?,
      enableEmailVerification: json['enable_email_verification'] as int?,
      enableSmsVerification: json['enable_sms_verification'] as int?,
      enableRegistration: json['enable_registration'] as int?,
      defaultCurrency: json['default_currency'] as String?,
      defaultCurrencySymbol: json['default_currency_symbol'] as String?,
      usdtWallet: json['usdt_wallet'],
      minimumDeposit: json['minimum_deposit'] as String?,
      maximumReferralWithdraw: json['maximum_referal_withdraw'] as String?,
      minimumReferralWithdraw: json['minimum_referal_withdraw'] as String?,
      maximumDeposit: json['maximum_deposit'] as String?,
      minimumWithdraw: json['minimum_withdraw'] as String?,
      maximumWithdraw: json['maximum_withdraw'] as String?,
      withdrawServiceCharges: json['withdraw_service_charges'] as String?,
      serviceChargesType: json['service_charges_type'] as String?,
      transferServiceCharges: json['transfer_service_charges'] as String?,
      transferServiceChargesType:
          json['transfer_service_charges_type'] as String?,
    );

Map<String, dynamic> _$GeneralSettingsClassToJson(
        GeneralSettingsClass instance) =>
    <String, dynamic>{
      'app_name': instance.appName,
      'fixed_charge': instance.fixedCharge,
      'percent_charge': instance.percentCharge,
      'base_color': instance.baseColor,
      'secondary_color': instance.secondaryColor,
      'enable_email_verification': instance.enableEmailVerification,
      'enable_sms_verification': instance.enableSmsVerification,
      'enable_registration': instance.enableRegistration,
      'default_currency': instance.defaultCurrency,
      'default_currency_symbol': instance.defaultCurrencySymbol,
      'usdt_wallet': instance.usdtWallet,
      'minimum_deposit': instance.minimumDeposit,
      'maximum_deposit': instance.maximumDeposit,
      'minimum_withdraw': instance.minimumWithdraw,
      'maximum_withdraw': instance.maximumWithdraw,
      'minimum_referal_withdraw': instance.minimumReferralWithdraw,
      'maximum_referal_withdraw': instance.maximumReferralWithdraw,
      'withdraw_service_charges': instance.withdrawServiceCharges,
      'service_charges_type': instance.serviceChargesType,
      'transfer_service_charges': instance.transferServiceCharges,
      'transfer_service_charges_type': instance.transferServiceChargesType,
    };
