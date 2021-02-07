import 'package:flutter/material.dart';

import 'chat.dart';

class ChatTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatService.getMessages(context, '1234'),
      );
  }
}