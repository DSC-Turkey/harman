import 'package:flutter/material.dart';

class MyFavouriteInstructorsPage extends StatefulWidget {
  @override
  _MyFavouriteInstructorsPageState createState() => _MyFavouriteInstructorsPageState();
}

class _MyFavouriteInstructorsPageState extends State<MyFavouriteInstructorsPage> {
  List instructors = ['name 1', 'name 2', 'name 3', 'name 4', 'name 5'];
  String def =
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(backgroundImage: NetworkImage(img),maxRadius: 40.0,),
            Text(instructor,style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
