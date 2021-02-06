import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ders Uygulaması'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: AvailableLessons(),
    );
  }
}
class AvailableLessons extends StatefulWidget{
  @override
  _AvailableLessonsState createState() => _AvailableLessonsState();

}
class _AvailableLessonsState extends State<AvailableLessons> {
  List lessonsList = [
    ['lesson1', 'Math', 20,],
    ['lesson2', 'History', 10,],
    ['lesson3', 'Scince', 30,],
    ['lesson4', 'English', 25,],
    ['lesson5', 'Turkish', 22,],
    ['lesson6', 'Deutch', 20,],
    ['lesson7', 'Coding', 18,],
    ['lesson8', 'Scince', 35,],
    ['lesson9', 'Math', 15,],
    ['lesson10', 'Math', 30,],
    ['lesson11', 'Math', 5,],
    ['lesson12', 'Math', 8,],
    ['lesson13', 'Math', 10,],
    ['lesson14', 'Math', 20,],
    ['lesson15', 'Math', 25,],
    ['lesson16', 'Math', 23,],
    ['lesson17', 'Math', 28,],
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lessonsList.length,
      itemBuilder: (context, index) {
        return Card(

          child:  ListTile(
            title: Text(lessonsList[index][0]),
            subtitle: Text(lessonsList[index][1]),
            trailing: Text('kişi sayısı: ${lessonsList[index][2].toString()}'),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
        );
      },);
  }

}