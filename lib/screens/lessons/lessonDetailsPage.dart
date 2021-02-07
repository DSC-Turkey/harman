import 'package:flutter/material.dart';

class LessonDetailsPage extends StatefulWidget{
  @override
  _lessonDetailsPageState createState() => _lessonDetailsPageState();
}

class _lessonDetailsPageState extends State<LessonDetailsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Text('Yavuz Selim Yayla ile yazılım'),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(children: [
            Container(
              color: Color.fromRGBO(144, 164, 174, 1,),
              height: 180,
              width: 180,
            ),
            Expanded(child: Column(
              children: [
                Text('yavuz Selim Yayla'),
                Text('18:00 19:00'),
                Padding(padding: EdgeInsets.only(top: 20,bottom: 20), child: Text('Yavuz Selim Yayla'),),
                Padding(padding: EdgeInsets.only(top: 8,bottom: 8)),
                Padding(padding: EdgeInsets.only(top: 8,bottom: 8)),
                Padding(padding: EdgeInsets.only(top: 8,bottom: 8)),
                
              ],
            ), flex: 2,)
          ],),)
        ],
      ),
    );
  }

}