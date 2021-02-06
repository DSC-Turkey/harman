import 'package:flutter/material.dart';

// class MyFovuriteInstructersPage extends StatefulWidget{
//   @override
//   _MyFovuriteInstructersPageState createState() => _MyFovuriteInstructersPageState();
//
// }
//
// class _MyFovuriteInstructersPageState extends State<MyFovuriteInstructersPage> {
//   List<Widget> widgets = [];
//   List teachers = ['name 1', 'name 2', 'name 3', 'name 4', 'name 5'];
//   String def = 'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow';
//
//   @override
//   Widget build(BuildContext context) {
//     teachers.forEach((element) {
//       widgets.add(Padding(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           children: [
//             CircleAvatar(backgroundImage: NetworkImage(def), radius: 50,),
//             Text(element[0],style: TextStyle(color: Colors.white),)
//           ],
//         ),
//       )
//       );
//     });
//
//     return Column(
//       children: [
//         SizedBox(
//           child: GridView.count(
//             shrinkWrap: true,
//             scrollDirection: Axis.vertical,
//             crossAxisCount: 3,
//             children: widgets,
//           ),
//         )
//       ],
//     );
//   }
// }

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
    return getFavouriteInstructers();
  }

  Widget getFavouriteInstructers(){
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
    return Card(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(backgroundImage: NetworkImage(img),maxRadius: 40.0,),
          Text(instructor,style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}
