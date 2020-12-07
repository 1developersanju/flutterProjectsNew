import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';
import 'package:scratcher/widgets.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int getRandomNumber() {
    random(min, max) {
      var rn = new Random();
      return min + rn.nextInt(max - min);
    }

    var d = random(10, 999);
    return d;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScratchCard(),
    );
  }
}

class ScratchCard extends StatefulWidget {
  @override
  _ScratchCardState createState() => _ScratchCardState();
}

class _ScratchCardState extends State<ScratchCard> {
  double opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => ScratchCard()));
          },
        ),
        title: Text("Scratch your Card"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        height: 500,
        width: 500,
        child: Builder(
          builder: (context) {
            return Scratcher(
              accuracy: ScratchAccuracy.low,
              threshold: 30.0,
              onThreshold: () {
                setState(() {
                  opacity = 1.0;
                });
              },
              image: Image.asset("assets/youwon.png"),
              child: AnimatedOpacity(
                opacity: opacity,
                duration: Duration(seconds: 2),
                child: Container(
                  height: 300,
                  width: 300,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/youwon.png"),
                                fit: BoxFit.fill),
                            shape: BoxShape.circle),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "\$200",
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
