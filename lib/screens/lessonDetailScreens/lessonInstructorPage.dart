import 'package:flutter/material.dart';

class LessonInstructorPage extends StatefulWidget{
  @override
  _lessonInstructorPage createState() => _lessonInstructorPage();
}
class _lessonInstructorPage extends State<LessonInstructorPage>{
  List yorum = [
    ['isim', 'yıldız', 'yorum'],
    ['isim2', 'yıldız2', 'yorum2'],
    ['isim3', 'yıldız3', 'yorum3'],
    ['isim4', 'yıldız4', 'yorum4'],
    ['isim5', 'yıldız5', 'yorum5'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child:  Column(
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
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
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
            ),
            SizedBox(

              height: MediaQuery.of(context).size.height/4,
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 5.0, mainAxisSpacing: 5.0,),
                itemCount: yorum.length, itemBuilder: (context, index) {
                return Column(
                  children : [
                    Text('${yorum[index][0]} ${yorum[index][1]}', style: TextStyle(color: Colors.white),),
                    Text(yorum[index][2], style: TextStyle(color: Colors.white))
                  ],
                );
              },),
            )
          ],
        ),
        padding: EdgeInsets.all(20),
      )
    );
  }

}