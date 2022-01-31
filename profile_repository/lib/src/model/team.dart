import 'package:json_annotation/json_annotation.dart';

part 'team.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Team {
  @JsonKey(name: 'level_1')
  final List<Level>? level1;
  @JsonKey(name: 'level_2')
  final List<Level>? level2;
  @JsonKey(name: 'level_3')
  final List<Level>? level3;
  final TeamSummary? summary;

  const Team({
    this.level1,
    this.level2,
    this.level3,
    this.summary,
  });

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Level {
  final int? id;
  final String? userId;
  final String? phoneNumber;
  final int? amount;
  final int? totalPeople;

  const Level({
    this.id,
    this.userId,
    this.phoneNumber,
    this.totalPeople,
    this.amount,
  });

  factory Level.fromJson(Map<String, dynamic> json) => _$LevelFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TeamSummary {
  int? totalEarnAmount;
  int? level1TotalMember;
  int? level2TotalMember;
  int? level3TotalMember;
  int? level1EarnedAmount;
  int? level2EarnedAmount;
  int? level3EarnedAmount;
  int? totalTeamMember;

  TeamSummary({
    this.totalEarnAmount,
    this.level1TotalMember,
    this.level2TotalMember,
    this.level3TotalMember,
    this.level1EarnedAmount,
    this.level2EarnedAmount,
    this.level3EarnedAmount,
    this.totalTeamMember,
  });

  factory TeamSummary.fromJson(Map<String, dynamic> json) =>
      _$TeamSummaryFromJson(json);
}
