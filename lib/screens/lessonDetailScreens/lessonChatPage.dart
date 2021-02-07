import 'package:flutter/material.dart';
import 'package:harman2021hackathon/service/chat.dart';

class LessonChatPage extends StatefulWidget {
  @override
  _lessonChatPageState createState() => _lessonChatPageState();
}

class _lessonChatPageState extends State<LessonChatPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ChatService.getMessages(context, '1234'),
      bottomNavigationBar: Row(
        children: [
          RaisedButton(
            child: Text('ekle'),
            onPressed: () {
              ChatService.sendMessages(
                  groupChatId: '1234', message: 'deneme mesajı');
            },
          )
        ],
      ),
    );
  }
}
