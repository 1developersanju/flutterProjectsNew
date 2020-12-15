import 'package:flutter/material.dart';
import 'package:kenburns/kenburns.dart';
import 'package:circular_clip_route/circular_clip_route.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zooming and panning"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 400,
          child: Card(
            elevation: 10.0,
            shadowColor: Colors.blue,
            color: Colors.white,
            child: Column(
              children: [
                Text(
                  'Double tap to see',
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10.0,
                ),
                InkWell(
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage('assets/profile.png'),
                      ),
                    ),
                  ),
                  onDoubleTap: () {
                    Navigator.push(
                      context,
                      CircularClipRoute<void>(
                        expandFrom: context,
                        curve: Curves.fastOutSlowIn,
                        reverseCurve: Curves.fastLinearToSlowEaseIn.flipped,
                        opacity: ConstantTween(1),
                        transitionDuration: Duration(milliseconds: 1500),
                        builder: (context) => NextPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: KenBurns(
        child: Image.asset('assets/profile.png'),
        maxScale: 8.0,
        minAnimationDuration: Duration(milliseconds: 3000),
        maxAnimationDuration: Duration(milliseconds: 5000),
      ),
    );
  }
}
