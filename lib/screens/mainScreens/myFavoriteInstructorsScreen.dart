import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:harman2021hackathon/themes/themes.dart';

class MyFavouriteInstructorsPage extends StatefulWidget {
  @override
  _MyFavouriteInstructorsPageState createState() => _MyFavouriteInstructorsPageState();
}

class _MyFavouriteInstructorsPageState extends State<MyFavouriteInstructorsPage> {
  List instructors = ['name 1', 'name 2', 'name 3', 'name 4', 'name 5','name 1', 'name 2', 'name 3', 'name 4', 'name 5','name 1', 'name 2', 'name 3', 'name 4', 'name 5'];
  String def = 'https://miro.medium.com/max/1000/1*Uv7vQj-WnJNVMBrQ8iaWYQ.jpeg';

  @override
  Widget build(BuildContext context) {
    return getFavouriteInstructors();
  }

  Widget getFavouriteInstructors(){
    return buildGridView(instructors);
  }

  Widget buildGridView(List data){
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: instructors.length,
      itemBuilder: (context, index){
        return instructorCard(def, instructors[index]);
      },
      );
  }

  Widget instructorCard(String img, String instructor){
    return GestureDetector(
      onTap: () {
        print('gridView');
      },
      child: Card(
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(backgroundImage: NetworkImage(img),maxRadius: 40.0,),
            Text(instructor,style: TextStyle(color: ThemeColors.fontColorLight),)
          ],
        ),
      ),
    );
  }
}
