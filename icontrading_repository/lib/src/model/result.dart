import 'package:json_annotation/json_annotation.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  @JsonKey(name: 'opening_trade_price')
  final String? openingTradePrice;
  @JsonKey(name: 'closing_trade_price')
  final String? closingTradePrice;
  @JsonKey(name: 'result_computation')
  final int? resultComputation;
  final String? result;

  Result({
    this.openingTradePrice,
    this.closingTradePrice,
    this.resultComputation,
    this.result,
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
