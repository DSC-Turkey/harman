import 'package:flutter/material.dart';

class LessonInstructorPage extends StatefulWidget{
  @override
  _lessonInstructorPage createState() => _lessonInstructorPage();
}
class _lessonInstructorPage extends State<LessonInstructorPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(

            child: Row(
              children: [
                Expanded(
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width/4,
                  ),
                ),
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Yavuz Selim Yayla', style: TextStyle(color: Colors.white),),
                  Text('katılımcı sayısı', style: TextStyle(color: Colors.white),),
                  RaisedButton(onPressed: () {}, color: Colors.grey,),
                  Row(children: [
                    Icon(Icons.star, color: Colors.grey,size: 30,),
                    Icon(Icons.star, color: Colors.grey,size: 30),
                    Icon(Icons.star, color: Colors.grey,size: 30),
                    Icon(Icons.star, color: Colors.grey,size: 30),
                    Icon(Icons.star, color: Colors.grey,size: 30)],)
                ],))
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width/2.3,
                height: MediaQuery.of(context).size.height/3.5,
                child: SingleChildScrollView(
                  child: Text('açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama', style: TextStyle(color: Colors.white),),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(children: [
                  Icon(Icons.star, color: Colors.grey,size: 30,),
                  Icon(Icons.star, color: Colors.grey,size: 30),
                  Icon(Icons.star, color: Colors.grey,size: 30),
                  Icon(Icons.star, color: Colors.grey,size: 30),
                  Icon(Icons.star, color: Colors.grey,size: 30)],),
                  Row(children: [
                    Icon(Icons.star, color: Colors.grey,size: 30,),
                    Icon(Icons.star, color: Colors.grey,size: 30),
                    Icon(Icons.star, color: Colors.grey,size: 30),
                    Icon(Icons.star, color: Colors.grey,size: 30),
                    Icon(Icons.star, color: Colors.grey,size: 30)],),
                  Row(children: [
                    Icon(Icons.star, color: Colors.grey,size: 30,),
                    Icon(Icons.star, color: Colors.grey,size: 30),
                    Icon(Icons.star, color: Colors.grey,size: 30),
                    Icon(Icons.star, color: Colors.grey,size: 30),
                    Icon(Icons.star, color: Colors.grey,size: 30)],)],
              )
            ],
          ),
          GridView(gridDelegate: null)


        ],
      ),
    );
  }

}