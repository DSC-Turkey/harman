

import 'package:flutter/material.dart';

import 'screens/homeScreen.dart';
import 'screens/myFavoriteInstructorsScreen.dart';
import 'screens/myLessonsScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/navigation' : (context) => NavigationPage(),
        '/home' : (context) => HomePage(),
      },
      home: NavigationPage(),
    );
  }
}

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  ///NavigationBar için sayfalar
  List<Widget> pages = [
    HomePage(),
    MyLessonsPage(),
    MyFavouriteInstructorsPage(),
  ];

  int pageNum = 0;

  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Ders Uygulaması'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(38, 50, 56, 1),
      ),
      body: PageView(
        //BottomNavigationBar bağlantısı
        controller: pageController,
        onPageChanged: (_pageNum) {
          setState(() {
            pageNum = _pageNum;
          });
        },
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(38, 50, 56, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Decoration().homeIcon,
            ),
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
        onTap: (index) {
          setState(() {
            pageNum = index;
            //PageView bağlantısı
            pageController.animateToPage(pageNum,
                duration: Duration(milliseconds: 500), curve: Curves.ease);
          });
        },
      ),
    );
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
