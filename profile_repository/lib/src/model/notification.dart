import 'package:json_annotation/json_annotation.dart';

part 'notification.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Notification {
  final int? currentPage;
  final List<NotificationData>? data;
  final int? lastPage;
  final String? path;
  final int? perPage;
  final int? total;

  const Notification({
    this.currentPage,
    this.data,
    this.lastPage,
    this.path,
    this.perPage,
    this.total,
  });

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class NotificationData {
  int? id;
  String? userId;
  String? title;
  dynamic image;
  String? content;
  String? createdBy;
  int? status;
  dynamic readAt;
  String? createdAt;
  String? updatedAt;

  NotificationData({
    this.id,
    this.userId,
    this.title,
    this.image,
    this.content,
    this.createdBy,
    this.status,
    this.readAt,
    this.createdAt,
    this.updatedAt,
  });

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);
}
