import 'package:flutter/material.dart';
import 'LaunchUrl.dart';

void main() {
  runApp(
    new HomeApp(),
  );
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Url Launcher",
      home: new LaunchUrlDemo(),
    );
  }
}
