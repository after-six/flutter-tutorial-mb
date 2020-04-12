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
      _buildButtonColumn(),
      _buildButtonColumn(),
      _buildButtonColumn(),
      _buildButtonColumn(),
      _buildButtonColumn(),
      _buildButtonColumn(),
      _buildButtonColumn(),
      _buildButtonColumn(),
          _buildButtonColumn(),
          _buildButtonColumn(),
          _buildButtonColumn(),
          _buildButtonColumn(),
          _buildButtonColumn(),
          _buildButtonColumn(),
          _buildButtonColumn(),
          _buildButtonColumn(),
    ]));
  }

  Container _buildButtonColumn() {
    return Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black87, width: 1.0)),
          color: Colors.black54,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                'TODO LIST 123',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w400,
                  color: Colors.yellow,
                ),
              ),
            ),
          ],
        ));
  }
}
