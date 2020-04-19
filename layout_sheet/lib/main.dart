import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'IntrinsicWidth'),
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
    const iconSize = 50.0;

    return Scaffold(
      appBar: AppBar(title: Text('Stack')),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.yellow,
            boxShadow: const [
              BoxShadow(blurRadius: 10),
            ],
            gradient: LinearGradient(
              colors: const [
                Colors.red,
                Colors.blue,
              ],
            ),
          ),
        ),
      ),
    );

  }
}
