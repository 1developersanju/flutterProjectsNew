import 'package:flutter/material.dart';
import 'package:liquid_swipe/Helpers/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final page = [
    Container(
      alignment: Alignment.center,
      color: Colors.blueGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/profile.png"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Sanjeev",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "The Cartoon Show",
            style: TextStyle(fontSize: 20),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    " +91 7339629247",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 22.0),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "  s4njeev.av@gmail.com",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 22.0),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
    Container(
      color: Colors.orange,
      child: Column(
        children: <Widget>[
          Image.asset("assets/Tom_Jerry.jpg"),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Tom and Jerry",
                  style: TextStyle(color: Colors.red, fontSize: 50),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "         Tom and Jerry is an American animated franchise and series of comedy short films created in 1940 by William Hanna and Joseph Barbera. Best known for its 161 theatrical short films by Metro-Goldwyn-Mayer, the series centers on the rivalry between the titular characters of a cat named Tom and a mouse named Jerry. Many shorts also feature several recurring characters.",
            style: TextStyle(color: Colors.black26, fontSize: 20),
          ),
        ],
      ),
    ),
    Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Image.asset("assets/ScoobyDoo.png"),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Scooby - Doo",
                  style: TextStyle(color: Colors.red, fontSize: 50),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "        Scooby-Doo is an American animated franchise comprising many animated television series produced from 1969 to the present, as well as their derivative media. Writers Joe Ruby and Ken Spears created the original series, Scooby-Doo, Where Are You!, for Hanna-Barbera Productions in 1969. This Saturday-morning cartoon series featured teenagers Fred Jones, Daphne Blake, Velma Dinkley, and Norville Shaggy Rogers, and their talking brown Great Dane named Scooby-Doo.",
            style: TextStyle(color: Colors.black26, fontSize: 20),
          ),
        ],
      ),
    ),
    Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 90,
          ),
          Image.asset("assets/Stuart.jpeg"),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Stuart Little",
                  style: TextStyle(color: Colors.red, fontSize: 50),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "        Stuart Little is a 1999 American family CGI animated/live-action comedy film loosely based on the 1945 novel of the same name by E. B. White. Directed by Rob Minkoff in his live-action debut, the screenplay was written by M. Night Shyamalan and Greg Brooker, and stars Geena Davis, Hugh Laurie, and Jonathan Lipnicki, alongside the voices of Michael J. Fox, Nathan Lane, Chazz Palminteri, Steve Zahn, Bruno Kirby, and Jennifer Tilly.",
            style: TextStyle(color: Colors.black26, fontSize: 20),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: LiquidSwipe(
        pages: page,
        enableLoop: false,
        fullTransitionValue: 300,
        enableSlideIcon: true,
        waveType: WaveType.liquidReveal,
        positionSlideIcon: 0.10,
      ),
    ));
  }
}
