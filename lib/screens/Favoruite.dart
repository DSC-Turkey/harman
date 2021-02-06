import 'package:flutter/material.dart';

class FovuriteInstructersPage extends StatefulWidget{
  @override
  _FovuriteInstructersPageState createState() => _FovuriteInstructersPageState();

}

class _FovuriteInstructersPageState extends State<FovuriteInstructersPage> {
  List<Widget> widgets = [];
  List teachers = [
    [
      'isim',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim2',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim3',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim4',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim5',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim2',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim3',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim4',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim5',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim2',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim3',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim4',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim5',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim2',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim3',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim4',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim5',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim2',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim3',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim4',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim5',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim2',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim3',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim4',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
    [
      'isim5',
      'https://lh3.googleusercontent.com/proxy/TxtAkIsp-rQIBXwScmooxyhgl2Qt-HisMX-gAbeiPaNOdtaBUnlXcT1-I6PeR-NOMJRTR7VNrtfZWjt3oIxIBrlEbwht0hf0RkiQumFiOvupEFZ2MyfMWcEE1OXj9ow'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    teachers.forEach((element) {
      widgets.add(Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(element[1]), radius: 50,),
            Text(element[0],style: TextStyle(color: Colors.white),)
          ],
        ),
      )
      );
    });
    return Column(
      children: [
        SizedBox(
          child: GridView.count(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            crossAxisCount: 3,
            children: widgets,
          ),
        )
      ],
    );
  }
}