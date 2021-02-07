import 'package:flutter/material.dart';
import 'package:harman2021hackathon/themes/themes.dart';

import '../../screens/lessonDetailScreens/lessonNavigator.dart';
import 'homeScreen.dart';

class MyLessonsPage extends StatefulWidget{
  @override
  _MyLessonsPageState createState() => _MyLessonsPageState();
}

class _MyLessonsPageState extends State<MyLessonsPage> {
  List lessons = [
    ['title', 'teacher', 'maxStudentValue', 'descriptions'],
    ['title', 'teacher', 'maxStudentValue', 'descriptions'],
    ['title', 'teacher', 'maxStudentValue', 'descriptions'],
    ['title', 'teacher', 'maxStudentValue', 'descriptions'],
    ['title', 'teacher', 'maxStudentValue', 'descriptions'],
    ['title', 'teacher', 'maxStudentValue', 'descriptions'],
    ['title', 'teacher', 'maxStudentValue', 'descriptions']
  ];

  @override
  Widget build(BuildContext context) {
    return getListViewData();
  }

  Widget getListViewData(){
    //TODO: Future get
    return buildListView(lessons);
  }

  Widget buildListView(lessons){
    return ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LessonNavigatorPage()));
            },
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  LessonCard(180),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child:  Column(
                        children: [
                          Text(lessons[index][0],style: TextStyle(color: ThemeColors.fontColorLight, fontWeight: FontWeight.bold, fontSize: 20),),
                          Padding(padding: EdgeInsets.only(bottom: 20), child: Text(lessons[index][1],style: TextStyle(color: ThemeColors.grey),),),
                          Text(lessons[index][2],style: TextStyle(color:ThemeColors.fontColorLight),),
                          Text(lessons[index][3],style: TextStyle(color: ThemeColors.fontColorLight),)
                        ],
                      ),
                    ),
                  )

                ],
              ),),
          );
        });
  }
}