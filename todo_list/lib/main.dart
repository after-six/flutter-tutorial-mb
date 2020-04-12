import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Container(
//        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.lightBlueAccent, width: 15.0),
            color: Colors.black38),
        child: Container(
          child: Text(
            'TODO',
            style: TextStyle(color: Colors.black87, fontSize: 55.0),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
//            border: Border.all(color: Colors.black87, width: 15.0),
            color: Colors.black54),
        child: Container(
          child: Column(
            children: <Widget>[
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
            ],
          ),
        ),
      )
    ]));
  }
}

//Widget textSection = Container(
////  padding: const EdgeInsets.all(3),
//  decoration: BoxDecoration(
//    border: Border.all(color: Colors.black87, width: 1.0),
//  ),
//  child: Text(
//    'TODO List123',
////    softWrap: true,
//    style: TextStyle(color: Colors.yellow, fontSize: 50.0),
//  ),
//);

Widget textSection = Text(
    'TODO List123',
//    softWrap: true,
    style: TextStyle(color: Colors.yellow, fontSize: 50.0),
);
