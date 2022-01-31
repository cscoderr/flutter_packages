import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  String? address;
  String? state;
  String? zip;
  dynamic country;
  String? city;

  Address({
    this.address,
    this.state,
    this.zip,
    this.country,
    this.city,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
