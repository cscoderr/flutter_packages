// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      openingTradePrice: json['opening_trade_price'] as String?,
      closingTradePrice: json['closing_trade_price'] as String?,
      resultComputation: json['result_computation'] as int?,
      result: json['result'] as String?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'opening_trade_price': instance.openingTradePrice,
      'closing_trade_price': instance.closingTradePrice,
      'result_computation': instance.resultComputation,
      'result': instance.result,
    };
