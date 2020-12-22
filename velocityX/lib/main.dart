import 'package:flutter/material.dart';
import 'package:velocityX/flexPage.dart';
//import 'package:velocityX/sizedBox.dart';
//import 'package:velocityX/textPage.dart';
//import 'boxPage.dart';
//import 'cardPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "demo App",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home:
          //TextPage(),
          //BoxPage(),
          //CardPage(),
          // SizedBoxPage(),
          FlexPage(),
    );
  }
}
