// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      level1: (json['level_1'] as List<dynamic>?)
          ?.map((e) => Level.fromJson(e as Map<String, dynamic>))
          .toList(),
      level2: (json['level_2'] as List<dynamic>?)
          ?.map((e) => Level.fromJson(e as Map<String, dynamic>))
          .toList(),
      level3: (json['level_3'] as List<dynamic>?)
          ?.map((e) => Level.fromJson(e as Map<String, dynamic>))
          .toList(),
      summary: json['summary'] == null
          ? null
          : TeamSummary.fromJson(json['summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'level_1': instance.level1,
      'level_2': instance.level2,
      'level_3': instance.level3,
      'summary': instance.summary,
    };

Level _$LevelFromJson(Map<String, dynamic> json) => Level(
      id: json['id'] as int?,
      userId: json['user_id'] as String?,
      phoneNumber: json['phone_number'] as String?,
      totalPeople: json['total_people'] as int?,
      amount: json['amount'] as int?,
    );

Map<String, dynamic> _$LevelToJson(Level instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'phone_number': instance.phoneNumber,
      'amount': instance.amount,
      'total_people': instance.totalPeople,
    };

TeamSummary _$TeamSummaryFromJson(Map<String, dynamic> json) => TeamSummary(
      totalEarnAmount: json['total_earn_amount'] as int?,
      level1TotalMember: json['level1_total_member'] as int?,
      level2TotalMember: json['level2_total_member'] as int?,
      level3TotalMember: json['level3_total_member'] as int?,
      level1EarnedAmount: json['level1_earned_amount'] as int?,
      level2EarnedAmount: json['level2_earned_amount'] as int?,
      level3EarnedAmount: json['level3_earned_amount'] as int?,
      totalTeamMember: json['total_team_member'] as int?,
    );

Map<String, dynamic> _$TeamSummaryToJson(TeamSummary instance) =>
    <String, dynamic>{
      'total_earn_amount': instance.totalEarnAmount,
      'level1_total_member': instance.level1TotalMember,
      'level2_total_member': instance.level2TotalMember,
      'level3_total_member': instance.level3TotalMember,
      'level1_earned_amount': instance.level1EarnedAmount,
      'level2_earned_amount': instance.level2EarnedAmount,
      'level3_earned_amount': instance.level3EarnedAmount,
      'total_team_member': instance.totalTeamMember,
    };
