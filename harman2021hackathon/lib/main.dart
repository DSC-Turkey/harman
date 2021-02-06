import 'package:flutter/material.dart';
import 'package:harman2021hackathon/services/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: HomePage(),
    );
  }
}
