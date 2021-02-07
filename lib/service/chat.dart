import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/messageModel.dart';

class ChatService {
  static final fire = FirebaseFirestore.instance;
  static final chatCollection = fire.collection('lessons');

  static Widget getMessages(context, groupChatId) {
    return StreamBuilder<QuerySnapshot>(
        stream:
            chatCollection.doc(groupChatId).collection('messages').orderBy('timestamp',descending: true).limit(20).snapshots(),
        builder: (context, snapshot) {
          List<Message> messageList = [];

          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(

              ),
            );
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
                // Todo: userId burada alınacak
                if (messageList[index].userId == '123'){
                 return Padding(padding: EdgeInsets.all(8), child: sentMessageCard(messageList[index]));
                  }else{
                  return Padding(padding: EdgeInsets.all(8), child: messageCard(messageList[index]),);
                }
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
          color: Color.fromRGBO(38, 50, 56, 1),
          child: Padding(
            padding: EdgeInsets.only(top: 3, bottom: 3, right: 20, left: 7),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(message.userName, style: TextStyle(color: Colors.white),),
                    Text(message.timestamp.toDate().toString().substring(10, 16), style: TextStyle(color: Colors.white),),
                  ],
                ),
                Text(message.message, style: TextStyle(color: Colors.white),),
              ],
            ),
          )
        )
      ],
    );
  }

  static Widget sentMessageCard(Message message) {
    return Row(
      children: [
        Spacer(),
        Card(
          color: Color.fromRGBO(149, 149, 149, 1),
          child: Padding(
            padding: EdgeInsets.only(top: 3, bottom: 3, right: 7, left: 20),
            child: Column(
              children: [
                Text(message.message, style: TextStyle(color: Colors.black),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Text(message.timestamp.toDate().toString().substring(10, 16), style: TextStyle(color: Colors.black),),
                  ],
                ),

              ],
            ),
          )
        ),
        CircleAvatar(),
      ],
    );
  }
}
