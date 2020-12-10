import 'package:flutter/material.dart';
import 'package:progress_timeline/progress_timeline.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoApp(),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  ProgressTimeline progressTimeline;

  List<SingleState> states = [
    SingleState(stateTitle: 'Day 1'),
    SingleState(stateTitle: 'Day 2'),
    SingleState(stateTitle: 'Day 3'),
    SingleState(stateTitle: 'Day 4'),
    SingleState(stateTitle: 'Day 5'),
    SingleState(stateTitle: 'Day 6'),
    SingleState(stateTitle: 'Day 7'),
    SingleState(stateTitle: 'Day 8'),
    SingleState(stateTitle: 'Day 9'),
    SingleState(stateTitle: 'Day 10'),
  ];

  @override
  void initState() {
    super.initState();
    progressTimeline = ProgressTimeline(
      states: states,
      iconSize: 35.0,
      checkedIcon: Icon(Icons.check_circle_outline),
      connectorColor: Colors.red,
      connectorWidth: 8.0,
      currentIcon: Icon(Icons.directions_run),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timeline"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: progressTimeline,
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              padding: EdgeInsets.all(10.0),
              child: Text("Move on"),
              color: Colors.green,
              onPressed: () {
                progressTimeline.gotoNextStage();
              },
            ),
            RaisedButton(
              padding: EdgeInsets.all(10.0),
              child: Text("DropOuted"),
              color: Colors.red,
              onPressed: () {
                progressTimeline.failCurrentStage();
              },
            ),
            RaisedButton(
              padding: EdgeInsets.all(10.0),
              child: Text("Move off"),
              color: Colors.amber,
              onPressed: () {
                progressTimeline.gotoPreviousStage();
              },
            ),
          ],
        ),
      ),
    );
  }
}
