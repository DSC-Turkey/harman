import 'package:flutter/material.dart';
import 'package:harman2021hackathon/screens/mainScreens/homeScreen.dart';

import 'themes/themes.dart';

class AddLesson extends StatefulWidget {
  @override
  _addLessonState createState() => _addLessonState();
}

class _addLessonState extends State<AddLesson>{
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(38, 50, 56, 1),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(30), child: Text('Talep edeceğiniz dersin veya konunun adını ve her kelinmesinin ilk harfi BÜYÜK ve KELİMELER ARASINDA boşluk OLMAYACAK şekilde yazınız', style: TextStyle(color: Colors.white),),),
            /*
            Row(
              children: [
                IconButton(icon: Icon(Icons.search, color: Color.fromRGBO(38, 50, 56, 1),), onPressed: null),
                TextField(
                controller: textEditingController,
                cursorColor: ThemeColors.background,
                maxLength: 32, /// Todo: altsatıra geçme eklenecek
              )],
            ),
           */
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Expanded(child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(children: [
                      Expanded(child:TextField(

                        style: TextStyle(color: Colors.white),
                          controller: textEditingController,
                          cursorColor: ThemeColors.white,
                          maxLength: 32,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 3),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)
                              )
                          )
                      ),flex: 5,),
                      Expanded(child: IconButton(icon: Icon(Icons.send, color: Colors.white,), onPressed: null),flex: 1,),
                    ],),
                  )),
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
            )
          ],
        ),
      )
    );
  }

}