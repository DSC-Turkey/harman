import 'package:flutter/material.dart';
import 'package:harman2021hackathon/themes/themes.dart';

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
          Align(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Bunlara da göz atmalısın',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              alignment: Alignment.centerLeft),
          SizedBox(height: 230.0, child: SuggestedBar()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'filtre bölümü buraya gelecek',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(child: TrendsList()),
        ],
      ),
    );
  }
}

//Todo: future operation planlandı
Widget getSuggested() {
  return null;
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
        return GestureDetector(
          onTap: () {
            print('horizantal $index');
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SuggestedLessonCard(170),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 170,
                    child: Text(
                      fakeList[index],
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  )),
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
        return GestureDetector(
          onTap: () {
            print('vertical $index');
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${index + 1}) ${data[index]}',
              style: TextStyle(color: ThemeColors.fontColorLight),
            ),
          ),
        );
      },
    );
  }
}

Widget LessonCard(double size) {
  return Container(
    color: ThemeColors.grey,
    width: size,
    height: size,
  );
}

Widget SuggestedLessonCard(double size) {
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
              Text(' data ',
                  style: TextStyle(
                      color: ThemeColors.fontColorLight,
                      backgroundColor: ThemeColors.accent)),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Stack(
            children: [
              Text(' data ',
                  style: TextStyle(
                      color: ThemeColors.fontColorLight,
                      backgroundColor: ThemeColors.accent)),
            ],
          ),
        ),

        ///Todo: Açıklamaları yaz.
      ],
    ),
  );
}
