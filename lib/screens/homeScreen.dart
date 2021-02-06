import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AvailableLessons extends StatefulWidget {
  @override
  _AvailableLessonsState createState() => _AvailableLessonsState();
}

class _AvailableLessonsState extends State<AvailableLessons> {
  List lessonsList = [
    ['lesson1', 'Math', 20],
    ['lesson2', 'History', 10],
    ['lesson3', 'Scince', 30],
    ['lesson4', 'English', 25],
    ['lesson5', 'Turkish', 22],
    ['lesson6', 'Deutch', 20],
    ['lesson7', 'Coding', 18],
    ['lesson8', 'Scince', 35],
    ['lesson9', 'Math', 15],
    ['lesson10', 'Math', 30],
    ['lesson11', 'Math', 5],
    ['lesson12', 'Math', 8],
    ['lesson13', 'Math', 10],
    ['lesson14', 'Math', 20],
    ['lesson15', 'Math', 25],
    ['lesson16', 'Math', 23],
    ['lesson17', 'Math', 28],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lessonsList.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(lessonsList[index][0]),
            subtitle: Text(lessonsList[index][1]),
            trailing: Text('kişi sayısı: ${lessonsList[index][2].toString()}'),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        );
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Öneriler'),
          ),
          SizedBox(height: 160.0, child: SuggestedBar()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('filtre bölümü buraya gelecek'),
          ),
          Expanded(child: TrendsList()),
        ],
      ),
    );
  }
}

class SuggestedBar extends StatelessWidget {
  final List<String> fakeList = [
    'Yavuz Selim Yayla ile Temel Yazılım',
    'Yavuz Selim Yayla ile Temel Yazılım',
    'Yavuz Selim Yayla ile Temel Yazılım'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: fakeList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.red,
                  width: 80.0,
                  height: 80.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(fakeList[index]),
              ),
            ],
          ),
        );
      },
    );
  }
}

class TrendsList extends StatefulWidget {
  @override
  _TrendsListState createState() => _TrendsListState();
}

class _TrendsListState extends State<TrendsList> {
  @override
  Widget build(BuildContext context) {
    return buildListView(data);
    //   FutureBuilder(
    //   future: null,
    //   builder: (context, snapshot){
    //     return buildListView(snapshot.data);
    //   },
    // );
  }

  var data = [
    'A deneme',
    'B deneme',
    'C deneme',
    'D deneme',
    'E deneme',
    'F deneme',
    'G deneme',
  ];

  Widget buildListView(List data) {
    return ListView.builder(
      itemCount: data.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: Text(data[index]),
            ),
          ),
        );
      },
    );
  }
}

Widget LessonCard(){
  return Container(
    color: Colors.grey,
    width: 120.0,
    height: 120.0,
  );
}

Widget SuggestedLessonCard(){
  return Container(
    child: Column(
    children: [
      LessonCard(),
      ///Todo: Açıklamaları yaz.
    ],
  ),
  );
}