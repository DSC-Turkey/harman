import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatService{
  static final fire = FirebaseFirestore.instance;
  static final chatCollection = fire.collection('groupChat');

  dynamic a(context, groupChatId ){
    return StreamBuilder(
        //stream: chatCollection.doc(groupChatId).collection(groupChatId).orderBy('timestamp', descending: true).limit(_limit).snapshots(),
    builder: (context, snapshot) {
          if(!snapshot.hasData){
            return Center(child: CircularProgressIndicator(),);
          }
          else{
            var listMessage = snapshot.data;
            return ListView.builder(
              itemCount:  null,
            );
          }
    }
    );
  }
}