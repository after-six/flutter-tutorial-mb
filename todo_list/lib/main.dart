import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
            bottomNavigationBar: BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () => _reverse(),
                    child: Text('Reverse items'),
                    textColor: Colors.lightBlue,
                  ),
                ],
              ),
            )));
  }

  void _reverse() {
    setState(() {
      europeanCountries = europeanCountries.reversed.toList();
    });
  }

}

class TodoTextField extends StatefulWidget {
  const TodoTextField({Key key, this.data}) : super(key: key);
  final String data;

  @override
  _TodoTextField createState() => _TodoTextField();
}

class _TodoTextField extends State<TodoTextField> {
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
              child: TextFormField(
                  maxLength: 25,
                  decoration: InputDecoration(
                      counterStyle: TextStyle(fontSize: 0),
                      hintText: "What do you gonna do?",
                      border: InputBorder.none),
                  onFieldSubmitted: _handleSubmission)),
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

  void _handleSubmission(String text) {
    setState(() {
      europeanCountries.insert(0, text);
    });
  }

}



// backing data
List<String> europeanCountries = <String>[
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

Widget _myListView(BuildContext context) {
  return ListView.separated(
    itemCount: europeanCountries.length,
    separatorBuilder: (context, index) => Divider(),
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(europeanCountries[index]),
        trailing: Icon(Icons.keyboard_arrow_right),
      );
    },
  );
}
