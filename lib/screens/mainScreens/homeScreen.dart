import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// class AvailableLessons extends StatefulWidget {
//   @override
//   _AvailableLessonsState createState() => _AvailableLessonsState();
// }
//
// class _AvailableLessonsState extends State<AvailableLessons> {
//   List lessonsList = [
//     ['lesson1', 'Math', 20],
//     ['lesson2', 'History', 10],
//     ['lesson3', 'Scince', 30],
//     ['lesson4', 'English', 25],
//     ['lesson5', 'Turkish', 22],
//     ['lesson6', 'Deutch', 20],
//     ['lesson7', 'Coding', 18],
//     ['lesson8', 'Scince', 35],
//     ['lesson9', 'Math', 15],
//     ['lesson10', 'Math', 30],
//     ['lesson11', 'Math', 5],
//     ['lesson12', 'Math', 8],
//     ['lesson13', 'Math', 10],
//     ['lesson14', 'Math', 20],
//     ['lesson15', 'Math', 25],
//     ['lesson16', 'Math', 23],
//     ['lesson17', 'Math', 28],
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: lessonsList.length,
//       itemBuilder: (context, index) {
//         return Card(
//           child: ListTile(
//             title: Text(lessonsList[index][0]),
//             subtitle: Text(lessonsList[index][1]),
//             trailing: Text('kişi sayısı: ${lessonsList[index][2].toString()}'),
//           ),
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//         );
//       },
//     );
//   }
// }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Align(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Bunlara da göz atmalısın', style: TextStyle(color: Colors.white),),
          ),
            alignment: Alignment.centerLeft
               ),
          SizedBox(height: 230.0, child: SuggestedBar()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('filtre bölümü buraya gelecek', style: TextStyle(color: Colors.white),),
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
        return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SuggestedLessonCard(170),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 170,
                  child: Text(fakeList[index],style: TextStyle(color: Colors.white, ),textAlign: TextAlign.center, maxLines: 2,),
                )
              ),
            ],
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
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('${index + 1}) ${data[index]}',style: TextStyle(color: Colors.white38),),
          );
      },
    );
  }
}

Widget LessonCard(double size){
  return Container(
    color: Color.fromRGBO(196, 196, 196, 1),
    width: size,
    height: size,
  );
}

Widget SuggestedLessonCard(double size){
  return Container(
    width: size,
    height: size,
    child: Stack(
    children: [
      LessonCard(size),
      Align(
        alignment: Alignment.topLeft,
        child: Stack(
          children: [

            Text('data', style: TextStyle(color: Colors.green, backgroundColor: Colors.red ),),],
        ),
      ),
      Align(
        alignment: Alignment.bottomLeft,
        child: Stack(
          children: [Text('data', style: TextStyle(color: Colors.green, backgroundColor: Colors.red ),),],
        ),
      ),
      ///Todo: Açıklamaları yaz.
    ],
  ),
  );
}
