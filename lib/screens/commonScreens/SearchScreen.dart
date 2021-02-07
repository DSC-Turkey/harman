import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:harman2021hackathon/themes/themes.dart';
import '../../main.dart';
import '../../screens/mainScreens/homeScreen.dart';

class SearchScreen extends StatefulWidget {
  @override
  _searchScreenState createState() => _searchScreenState();
}

class _searchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColors.accent,
        title: Text('Harman'),
        actions: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: ThemeColors.grey,
                ),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NavigationPage()));
                },
              ),
              IconButton(
                icon: Icon(Icons.notifications, color: ThemeColors.grey),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: ThemeColors.grey,
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              color: ThemeColors.white,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.search,
                        color: ThemeColors.background,
                      ),
                      onPressed: () {
                        
                      }),
                  Expanded(
                      child: TextField(
                    controller: searchController,
                    cursorColor: ThemeColors.background,
                  )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Tavsiye edilen dersler',
              style: TextStyle(color: ThemeColors.fontColorLight),
            ),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: SuggestedLessonCard(200),
                  );
                }),
            flex: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Tavsiye edilen eğitmenler',
                style: TextStyle(color: ThemeColors.fontColorLight)),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: CircleAvatar(
                    backgroundColor: ThemeColors.grey,
                    radius: 100,
                  ),
                );
              },
            ),
            flex: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Önceki aramalar',
                style: TextStyle(color: ThemeColors.fontColorLight)),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: SuggestedLessonCard(200),
                );
              },
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }
}
