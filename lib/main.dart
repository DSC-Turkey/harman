import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:harman2021hackathon/screens/commonScreens/SearchScreen.dart';

import 'screens/mainScreens/homeScreen.dart';
import 'screens/mainScreens/myFavoriteInstructorsScreen.dart';
import 'screens/mainScreens/myLessonsScreen.dart';
import 'screens/userManagement/loginScreen.dart';
import 'service/auth.dart';
import 'service/database.dart';
import 'themes/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/navigation': (context) => NavigationPage(),
        '/home': (context) => HomePage(),
      },
      home: AuthService.authHandler(context, NavigationPage(), LoginPage()),
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
  void initState() {
    DatabaseService.initUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.background,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu,color: ThemeColors.grey,),
          onPressed: null,
        ), // Todo: sol menu açıcı
        actions: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.search,color: ThemeColors.grey,),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
                },
              ),
              IconButton(
                icon: Icon(Icons.notifications,color: ThemeColors.grey),
                onPressed: () {
                  AuthService.signOut();
                },
              ),
              IconButton(
                icon: Icon(Icons.person,color: ThemeColors.grey,),
                onPressed: () {},
              ),
            ],
          )
        ],
        title: Text('Harman'),
        backgroundColor: ThemeColors.accent,
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
        backgroundColor: ThemeColors.accent,
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
        unselectedItemColor: ThemeColors.grey,
        selectedItemColor: ThemeColors.white,
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
