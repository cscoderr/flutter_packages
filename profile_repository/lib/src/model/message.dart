class Message {
  const Message({this.message, this.status});

  final String? message;
  final String? status;

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      message: json['message'],
    );
  }
}
