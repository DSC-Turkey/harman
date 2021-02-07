import 'package:flutter/material.dart';
import 'package:harman2021hackathon/service/chat.dart';
import 'package:harman2021hackathon/themes/themes.dart';

class LessonChatPage extends StatefulWidget {
  @override
  _lessonChatPageState createState() => _lessonChatPageState();
}

class _lessonChatPageState extends State<LessonChatPage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ChatService.getMessages(context, '1234'),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: ThemeColors.lightAccent,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: Icon(Icons.tag_faces),
                  color: ThemeColors.background,
                  onPressed: (){}),
              Expanded(
                  child: TextField(
                controller: textEditingController,
                cursorColor: ThemeColors.background,
                    maxLength: 32, /// Todo: altsatıra geçme eklenecek
              )),
              IconButton(
                  icon: Icon(Icons.send, color: ThemeColors.background),
                  onPressed: _onSend)
            ],
          ),
        ),
      ),
    );
  }

  void _onSend() {
    ChatService.sendMessages(groupChatId: "1234",message: textEditingController.text);
  }
}
