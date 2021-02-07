import 'package:flutter/material.dart';
import 'package:harman2021hackathon/screens/commonScreens/SearchScreen.dart';
import 'package:harman2021hackathon/themes/themes.dart';
import 'lessonChatPage.dart';
import 'lessonDetailsPage.dart';
import 'lessonInstructorPage.dart';

class LessonNavigatorPage extends StatefulWidget {
  @override
  _lessonNavigatorPageState createState() => _lessonNavigatorPageState();
}

class _lessonNavigatorPageState extends State<LessonNavigatorPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ThemeColors.accent,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: ThemeColors.grey,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.search, color: ThemeColors.grey), onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
            }),
            IconButton(
                icon: Icon(Icons.notifications, color: ThemeColors.grey),
                onPressed: null),
            IconButton(
                icon: Icon(Icons.person, color: ThemeColors.grey), onPressed: null),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'Ders Detayları'),
              Tab(text: 'Eğitmen Detayları'),
              Tab(text: 'Yorumlar'),
            ],
          ),
          title: Text('Harman'),
        ),
        body: TabBarView(
          children: [
            LessonDetailsPage(),
            LessonInstructorPage(),
            LessonChatPage()
          ],
        ),
      ),
    );
  }
}
