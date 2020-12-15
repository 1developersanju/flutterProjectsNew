import 'package:flutter/material.dart';
import 'package:elastic_drawer/elastic_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ElasticDrawer(
      mainColor: Colors.white,
      drawerColor: Color(0xff3C3F41),
      mainChild: Center(
        child: Text(
          'MAIN page\nswipe right to left',
          style: TextStyle(color: Colors.black54, fontSize: 30),
        ),
      ),
      drawerChild: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState
                  .push(MaterialPageRoute(builder: (context) => YellowPage()));
            },
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'YELLOW page',
                style: TextStyle(
                    color: Color(0xfff4c20d),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState
                  .push(MaterialPageRoute(builder: (context) => GreenPage()));
            },
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'GREEN page',
                style: TextStyle(
                    color: Color(0xff3cba54),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState
                  .push(MaterialPageRoute(builder: (context) => RedPage()));
            },
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'RED page',
                style: TextStyle(
                    color: Color(0xffdb3236),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff3cba54),
      child: Text(
        "Green Page",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 50,
          color: Colors.amber,
        ),
      ),
    );
  }
}

class YellowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff4c20d),
      child: Text(
        "yellow Page",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 50,
          color: Colors.red,
        ),
      ),
    );
  }
}

class RedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffdb3236),
      child: Text(
        "Red Page",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 50, color: Colors.green),
      ),
    );
  }
}
