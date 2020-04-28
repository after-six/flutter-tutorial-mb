import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<String> aaaa = [
      "blablalbla",
      "blablalbla",
      "blablalbla",
      "blablalbla",
      "blablalbla",
      "blablalbla",
      "blablalbla",
      "blablalbla",
      "blablalbla"
    ];
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.red, secondaryHeaderColor: Colors.orange),
      home: Scaffold(
        appBar: AppBar(title: Text("After todo")),
        body: Column(
          children: <Widget>[
            TodoTextField(),
            Expanded(child: _myListView(context))
          ],
        ),
      ),
    );
  }
}

class TodoTextField extends StatelessWidget {
  const TodoTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(color: Colors.grey, width: 2),
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 9,
            child: TextField(
              maxLength: 25,
              decoration: InputDecoration(
                  counterStyle: TextStyle(fontSize: 0),
                  hintText: "What do you gonna do?",
                  border: InputBorder.none),
            ),
          ),
          Flexible(
            flex: 1,
            child: IconButton(
              icon: Icon(
                Icons.send,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _myListView(BuildContext context) {
  // backing data
  final europeanCountries = [
    'Albania',
    'Andorra',
    'Armenia',
    'Austria',
    'Azerbaijan',
    'Belarus',
    'Belgium',
    'Bosnia and Herzegovina',
    'Bulgaria',
    'Croatia',
    'Cyprus',
    'Czech Republic',
    'Denmark',
    'Estonia',
    'Finland',
    'France',
    'Georgia',
    'Germany',
    'Greece',
    'Hungary',
    'Iceland',
    'Ireland',
    'Italy',
    'Kazakhstan',
    'Kosovo',
    'Latvia',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Macedonia',
    'Malta',
    'Moldova',
    'Monaco',
    'Montenegro',
    'Netherlands',
    'Norway',
    'Poland',
    'Portugal',
    'Romania',
    'Russia',
    'San Marino',
    'Serbia',
    'Slovakia',
    'Slovenia',
    'Spain',
    'Sweden',
    'Switzerland',
    'Turkey',
    'Ukraine',
    'United Kingdom',
    'Vatican City'
  ];

  return ListView.separated(
    itemCount: europeanCountries.length,
    separatorBuilder: (context, index) => Divider(),
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(europeanCountries[index]),
      );
    },
  );
}
