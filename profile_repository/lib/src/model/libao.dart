import 'package:json_annotation/json_annotation.dart';

part 'libao.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Libao {
  final int? totalAsset;
  final int? yuLibao;
  final int? totalRevenue;
  final int? yesterRevenue;

  const Libao({
    this.totalAsset,
    this.yuLibao,
    this.totalRevenue,
    this.yesterRevenue,
  });

  factory Libao.fromJson(Map<String, dynamic> json) => _$LibaoFromJson(json);
}
