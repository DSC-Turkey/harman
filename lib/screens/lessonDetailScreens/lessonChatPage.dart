import 'package:flutter/material.dart';
import 'package:harman2021hackathon/service/chat.dart';

class LessonChatPage extends StatefulWidget {
  @override
  _lessonChatPageState createState() => _lessonChatPageState();
}

class _lessonChatPageState extends State<LessonChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ChatService.getMessages(context, '1234'),
      bottomNavigationBar: BottomAppBar(
          child: Container(
            color: Color.fromRGBO(144, 164, 174, 1),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(icon: Icon(Icons.tag_faces), color: Color.fromRGBO(38, 50, 56, 1), onPressed: null),
            Expanded(child: TextField()),
            IconButton(icon: Icon(Icons.send, color: Color.fromRGBO(38, 50, 56, 1),), onPressed: null)
          ],
        ),
      )),

      // Row(
      //   mainAxisSize: MainAxisSize.max,
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     IconButton(icon: Icon(Icons.tag_faces), onPressed: null),
      //     TextField(),
      //     IconButton(icon: Icon(Icons.send), onPressed: null)
      //   ],
      // ),
      // Row(
      //   children: [
      //     RaisedButton(
      //       child: Text('ekle'),
      //       onPressed: () {
      //         ChatService.sendMessages(
      //             groupChatId: '1234', message: 'deneme mesajı');
      //       },
      //     )
      //   ],
      // ),
    );
  }
}
