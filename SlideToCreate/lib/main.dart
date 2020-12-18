import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

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
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/Image1.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 70.0,
                  fontWeight: FontWeight.w900,
                  backgroundColor: Colors.white54,
                  color: Colors.black,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ),
            Builder(
              builder: (context) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SlideAction(
                    innerColor: Colors.black,
                    outerColor: Colors.white,
                    sliderButtonIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    borderRadius: 16.0,
                    submittedIcon: Icon(Icons.done),
                    animationDuration: Duration(seconds: 1),
                    onSubmit: () {},
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
