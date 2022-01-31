import 'package:auth_repository/auth_repository.dart';

class ResponseUser {
  const ResponseUser({this.data, this.message});

  final String? message;
  final User? data;

  factory ResponseUser.fromJson(Map<String, dynamic> json) => ResponseUser(
        message: json['message'] as String?,
        data: json['data'] != null ? User.fromJson(json['data']) : null,
      );
}
