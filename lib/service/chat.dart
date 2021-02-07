import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/messageModel.dart';

class ChatService {
  static final fire = FirebaseFirestore.instance;
  static final chatCollection = fire.collection('groupChat');

  static Widget getMessages(context, groupChatId) {
    return StreamBuilder<QuerySnapshot>(
        stream:
            chatCollection.doc(groupChatId).collection('messages').snapshots(),
        builder: (context, snapshot) {
          var messageList = [];

          if (!snapshot.hasData) {
            return null;
          } else {
            snapshot.data.docs.forEach((element) {
              var newMessage = Message(
                id: element.id,
                userId: element['userId'],
                userName: element['userName'],
                message: element['message'],
                timestamp: element['timestamp'],
              );
              messageList.add(newMessage);
            });

            return ListView.builder(
              itemCount: messageList.length,
              reverse: true,
              itemBuilder: (context, index) {
                return messageCard(messageList[index]);
              },
            );
          }
        });
  }

  static void sendMessages({groupChatId, message}) async {
    var defUserID = '123';
    var timestamp = Timestamp.now();
    var userName = 'test';

    Map<String, dynamic> data = {
      'userId': defUserID,
      'userName': userName,
      'message': message,
      'timestamp': timestamp,
    };

    await chatCollection.doc(groupChatId).collection('messages').add(data);
  }

  static Widget messageCard(Message message) {
    return Row(
      children: [
        CircleAvatar(),
        Card(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(message.userName),
                  Text(message.timestamp.toDate().toString()),
                ],
              ),
              Text(message.message),
            ],
          ),
        )
      ],
    );
  }
}
