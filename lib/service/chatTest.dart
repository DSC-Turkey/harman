import 'package:flutter/material.dart';

import 'chat.dart';

class ChatTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
