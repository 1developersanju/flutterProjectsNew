import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MaterialApp(
      home: SliderDemo(),
      debugShowCheckedModeBanner: false,
    ));

final images = [
  Image.asset('assets/coffee1.jpeg'),
  Image.asset('assets/coffee2.jpeg'),
  Image.asset('assets/coffee3.png'),
  Image.asset('assets/coffee4.jpeg'),
  Image.asset('assets/coffee5.jpeg'),
];

class SliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("Coffeee!!"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'sample images',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          CarouselSlider(
            items: images,
            options: CarouselOptions(
              aspectRatio: 1.0,
              scrollDirection: Axis.horizontal,
              autoPlay: true,
            ),
          ),
        ],
      ),
    );
  }
}
