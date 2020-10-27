import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CupertinoActionSheet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Search Talents Across You'),
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: RaisedButton(
        child: Text("Click me"),
        onPressed: () {
          final act = CupertinoActionSheet(
            title: Text("Make others grow,which makes you grow"),
            message: Text("What do you prefer"),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: Text("Actors"),
                onPressed: () {
                  print("you wanted good actors,right!");
                },
              ),
              CupertinoActionSheetAction(
                child: Text("Music Directors"),
                onPressed: () {
                  print("you wanted good Music Directors,iss it!");
                },
              ),
              CupertinoActionSheetAction(
                child: Text("Cinematographer"),
                onPressed: () {
                  print("you wanted good Music Cinematographers");
                },
              ),
              CupertinoActionSheetAction(
                child: Text("Writers"),
                onPressed: () {
                  print("you wanted good Music Writers,iss it!");
                },
              ),
              CupertinoActionSheetAction(
                child: Text("Other Technicians for FilmMaking."),
                onPressed: () {
                  print("WoW,you wanted technicians for making a film.");
                },
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              child: Text("cancel"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          );
          showCupertinoModalPopup(
              context: context, builder: (BuildContext context) => act);
        },
      )),
    );
  }
}
