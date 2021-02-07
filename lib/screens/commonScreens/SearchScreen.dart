import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:harman2021hackathon/screens/mainScreens/homeScreen.dart';

class SearchScreen extends StatefulWidget{
  @override
  _searchScreenState createState() => _searchScreenState();
}

class _searchScreenState extends State<SearchScreen>{
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(38, 50, 56, 1),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10), child: Container(
            color: Colors.white,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: Icon(Icons.search, color: Color.fromRGBO(38, 50, 56, 1),), onPressed: null),
                Expanded(child: TextField()),
              ],
            ),
          ),),
          Text('Tavsiye edilen dersler', style: TextStyle(color: Colors.white),),
          Expanded(child: ListView.builder(itemCount: 10, scrollDirection: Axis.horizontal, itemBuilder: (context, index) {
            return Padding(padding: EdgeInsets.all(10), child: SuggestedLessonCard(200),);
          }),flex: 2,),
          Text('Tavsiye edilen eğitmenler', style: TextStyle(color: Colors.white)),
          Expanded(child: ListView.builder(itemCount: 10, scrollDirection: Axis.horizontal, itemBuilder: (context, index) {
            return Padding(padding: EdgeInsets.all(10), child: CircleAvatar(backgroundColor: Colors.grey, radius: 100,),);
          },),flex: 2,),
          Text('Önceki aramalar', style: TextStyle(color: Colors.white)),
          Expanded(child: ListView.builder(itemCount: 10, scrollDirection: Axis.horizontal, itemBuilder: (context, index) {
            return Padding(padding: EdgeInsets.all(10), child: SuggestedLessonCard(200),);
          },),flex: 2,),
        ],
      ),
    );
  }

}