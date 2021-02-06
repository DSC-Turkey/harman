import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //PageView Sayfaları
  List<Widget> pages = [
    Container(
      child: Text('ana sayfa'),
    ),
    AvailableLessons(),
    Container(
      child: Text('Favori eğitmenler'),
    ),
  ];
  //Başlangıç sayfası
  int pageNum = 0;
  PageController pageController = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        title: Text('Ders Uygulaması'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(38,50,56,1),
      ),
      body: PageView(
        controller: pageController,
        //BottomNavigationBar bağlantısı
        onPageChanged: (_pageNum){
          setState(() {
            pageNum = _pageNum;
          });
        },
        children: pages,
      ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(38,50,56,1),
        items: [
          BottomNavigationBarItem(
          icon: Icon(Decoration().homeIcon,),
          label: 'Ana sayfa',
        ),
          BottomNavigationBarItem(
            icon: Icon(Decoration().bookIcon),
            label: 'Derslerim',
          ),
          BottomNavigationBarItem(
            icon: Icon(Decoration().favoritesIcon),
            label: 'Favori Eğitmenler',
          ),
        ],
        currentIndex: pageNum,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        onTap:(index) {
          setState(() {
            pageNum = index;
            //PageView bağlantısı
            pageController.animateToPage(pageNum, duration: Duration(milliseconds: 500), curve: Curves.ease);
          });
        },
      ),
    );
  }
}
class AvailableLessons extends StatefulWidget{
  @override
  _AvailableLessonsState createState() => _AvailableLessonsState();

}
class _AvailableLessonsState extends State<AvailableLessons> {
  List lessonsList = [
    ['lesson1', 'Math', 20,],
    ['lesson2', 'History', 10,],
    ['lesson3', 'Scince', 30,],
    ['lesson4', 'English', 25,],
    ['lesson5', 'Turkish', 22,],
    ['lesson6', 'Deutch', 20,],
    ['lesson7', 'Coding', 18,],
    ['lesson8', 'Scince', 35,],
    ['lesson9', 'Math', 15,],
    ['lesson10', 'Math', 30,],
    ['lesson11', 'Math', 5,],
    ['lesson12', 'Math', 8,],
    ['lesson13', 'Math', 10,],
    ['lesson14', 'Math', 20,],
    ['lesson15', 'Math', 25,],
    ['lesson16', 'Math', 23,],
    ['lesson17', 'Math', 28,],
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lessonsList.length,
      itemBuilder: (context, index) {
        return Card(

          child:  ListTile(
            title: Text(lessonsList[index][0]),
            subtitle: Text(lessonsList[index][1]),
            trailing: Text('kişi sayısı: ${lessonsList[index][2].toString()}'),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
        );
      },);
  }

}
class Decoration {
  IconData notificationIcon = Icons.notifications;
  IconData searchIcon = Icons.search;
  IconData userIcon = Icons.account_circle;
  IconData starIcon = Icons.star;
  IconData homeIcon = Icons.home;
  IconData favoritesIcon = Icons.favorite_border_outlined;
  IconData bookIcon = Icons.book;

}