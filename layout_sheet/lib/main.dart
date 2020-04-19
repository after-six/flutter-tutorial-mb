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
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(const [
              ListTile(title: Text('First item')),
              ListTile(title: Text('Second item')),
              ListTile(title: Text('Third item')),
              ListTile(title: Text('Fourth item')),
            ]),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FlutterLogo(size: 500),
                Text(
                  'This is some longest text that should be centered'
                      'together with the logo',
                  textAlign: TextAlign.center,
                  textScaleFactor: 7,
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}
