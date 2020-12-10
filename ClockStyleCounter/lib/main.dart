import 'package:flutter/material.dart';
import 'package:count_by_clock/count_by_clock.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoApp(),
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: FittedBox(
                child: CountByClock(
                  counter,
                  curve: Curves.easeInCirc,
                  flatStyle: false,
                  hideTick: true,
                  clockArea: 100,
                  baseColor: Colors.white,
                  digitCount: 2,
                  tickColor: Colors.redAccent,
                  tickThickness: 8.0,
                ),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(10.0),
              onPressed: () => incrementCounter(),
              child: Text("Start to Count"),
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
