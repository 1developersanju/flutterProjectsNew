import 'package:flutter/material.dart';
import 'package:animated_float_action_button/animated_floating_action_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoApp(),
    );
  }
}

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  int index = 0;
  Widget exampleOne() {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          setState(() {
            index = index + 1;
          });
        },
        focusColor: Colors.yellow,
        focusElevation: 16.0,
        heroTag: 'add',
        elevation: 2.0,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.amber,
      ),
    );
  }

  Widget exampleTwo() {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          setState(() {
            index = index + 2;
          });
        },
        focusColor: Colors.yellow,
        heroTag: "anything",
        focusElevation: 16.0,
        elevation: 2.0,
        child: Icon(
          Icons.search,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget exampleThree() {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          setState(() {
            index = index * 0;
          });
        },
        focusColor: Colors.yellow,
        heroTag: "see",
        focusElevation: 16.0,
        elevation: 2.0,
        child: Icon(
          Icons.power_settings_new,
          color: Colors.black,
        ),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("Animated Floating ActionButton"),
      ),
      body: Center(
        child: Text(
          index.toString(),
          style: TextStyle(
              fontSize: 50.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: AnimatedFloatingActionButton(
        colorEndAnimation: Colors.red,
        colorStartAnimation: Colors.blue,
        animatedIconData: AnimatedIcons.menu_home,
        fabButtons: <Widget>[
          exampleOne(),
          exampleTwo(),
          exampleThree(),
        ],
      ),
    );
  }
}
