import 'package:chat_app/constants.dart';

class Message {
  final String message;
  final String id;
  Message(this.message, this.id);

  factory Message.fromJson(Map<String, dynamic> jsonData) {
    if (jsonData[kMessage] != null) {
      return Message(jsonData[kMessage], jsonData[kId]);
    } else {
      return Message(kMessage, kId);
    }
  }
}
