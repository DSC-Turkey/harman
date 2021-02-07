import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LessonDetailsPage extends StatefulWidget{
  @override
  _lessonDetailsPageState createState() => _lessonDetailsPageState();
}

class _lessonDetailsPageState extends State<LessonDetailsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10), child: Text('Yavuz Selim Yayla ile yazılım', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Expanded(child: Container(
                  color: Color.fromRGBO(144, 164, 174, 1,),
                  height: 200,
                  width: 200,
                ),flex: 4,),
                Expanded(child: Padding(padding: EdgeInsets.all(10),child: SizedBox(
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('yavuz Selim Yayla', style: TextStyle(color: Colors.white)),
                      Text('18:00 19:00', style: TextStyle(color: Colors.white)),
                      Text('Yavuz Selim Yayla', style: TextStyle(color: Colors.white)),
                      buildCard('yazılım'),
                      buildCard('uygulama'),
                      buildCard('kişisel gelişim'),
                      buildCard('hayır işi'),
                      Spacer(),
                      RaisedButton(child: Text('Derse Katıl'), onPressed: (){}, color: Color.fromRGBO(38, 50, 56, 1),),
                    ],
                  ),
                ),),flex: 3,)
              ],),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(10), child: Text('Ders Açıklaması', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),),
                SizedBox(
                  child:  SingleChildScrollView(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama'
                          'açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama '
                          'açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama'
                          ' açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama '
                          'açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama '
                          'açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama '
                          'açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama açıklama '
                          'açıklama açıklama',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height/3,
                ),
                Padding(padding: EdgeInsets.all(15), child: Text('ders ekleri', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),),

               Wrap(
                 children: [
                   Padding(padding: EdgeInsets.all(10),
                     child: Icon(Icons.folder, size: 50, color: Colors.white,),),
                 ],
               ),

                Padding(padding: EdgeInsets.all(15), child: Text('Eklenen Yazılar', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),),

                Wrap(
                 children: [ Padding(padding: EdgeInsets.all(10),
                   child: Icon(Icons.menu_book_sharp, size: 50, color: Colors.white,),),
                   Padding(padding: EdgeInsets.all(10),
                     child: Icon(Icons.menu_book_sharp, size: 50, color: Colors.white),),
                   Padding(padding: EdgeInsets.all(10),
                     child: Icon(Icons.menu_book_sharp, size: 50, color: Colors.white),),
                   Padding(padding: EdgeInsets.all(10),
                     child: Icon(Icons.menu_book_sharp, size: 50, color: Colors.white),),
                   Padding(padding: EdgeInsets.all(10),
                     child: Icon(Icons.menu_book_sharp, size: 50, color: Colors.white),)],
               ),
                Wrap(
                  children: [
                    Padding(padding: EdgeInsets.all(10),
                      child: Icon(Icons.local_post_office_outlined, size: 50, color: Colors.white,),),
                  ],
                )
              ],
            ),


          ],
        ),
      )
    );
  }

}

Widget buildCard(String text){
  return Card(
    child: SafeArea(
      child: Text('  ${text}  ', style: TextStyle(color: Colors.black)),
    ),
    color: Colors.grey,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
    ),
  );
}