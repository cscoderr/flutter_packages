class RegisterMessage {
  RegisterMessage({
    this.available,
    this.message,
    this.code,
  });

  final bool? available;
  final String? message;
  final String? code;

  factory RegisterMessage.fromJson(Map<String, dynamic> json) {
    return RegisterMessage(
      available: json['available'],
      message: json['message'],
      code: json['code'].toString(),
    );
  }
}
