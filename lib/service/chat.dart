import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatService {
  static final fire = FirebaseFirestore.instance;
  static final chatCollection = fire.collection('groupChat');

  static Widget getMessages(context, groupChatId) {
    return StreamBuilder<QuerySnapshot>(
        stream:
            chatCollection.doc(groupChatId).collection('messages').snapshots(),
        builder: (context, snapshot) {
          var messageList = [];
          snapshot.data.docs.forEach((element) {
            //Todo: mesaj formatına çevir
            messageList.add(element);
          });

          if (!snapshot.hasData) {
            return null;
          } else {
            return ListView.builder(
              itemCount: messageList.length,
              reverse: true,
              itemBuilder: (context, index) {
                return Text(messageList[index].toString());
              },
            );
          }
        });
  }
}
