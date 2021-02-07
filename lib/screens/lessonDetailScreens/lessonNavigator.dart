import 'package:flutter/material.dart';
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
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              IconButton(
                  icon: Icon(Icons.search, color: Colors.white),
                  onPressed: null),
              IconButton(
                  icon: Icon(Icons.notifications, color: Colors.white),
                  onPressed: null),
              IconButton(
                  icon: Icon(Icons.person, color: Colors.white),
                  onPressed: null),
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
      ),
    );
  }
}
