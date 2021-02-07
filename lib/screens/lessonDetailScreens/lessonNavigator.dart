import 'package:flutter/material.dart';

import 'lessonDetailsPage.dart';


class LessonNavigatorPage extends StatefulWidget{
  @override
  _lessonNavigatorPageState createState() => _lessonNavigatorPageState();
}

class _lessonNavigatorPageState extends State<LessonNavigatorPage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'Ders Detayları',),
                Tab(text: 'Eğitmen Detayları',),
                Tab(text: 'Yorumlar',),
              ],
            ),
            title: Text('Harman'),
          ),
          body: TabBarView(
            children: [
              LessonDetailsPage(),
              Scaffold(
                backgroundColor: Colors.red,
              ),
              Scaffold(
                backgroundColor: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }

}