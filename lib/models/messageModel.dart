import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String id;
  final String userId;
  final String userName;
  final String message;
  final Timestamp timestamp;

  Message({this.id, this.userId, this.userName, this.message, this.timestamp});
}
