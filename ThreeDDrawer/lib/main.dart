import 'package:flutter/material.dart';
import 'package:tridimensional_drawer/tridimensional_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Drawer(),
    );
  }
}

class Drawer extends StatefulWidget {
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<Drawer> {
  final TridimensionalDrawerController controller =
      TridimensionalDrawerController();
  @override
  Widget build(BuildContext context) {
    return TridimensionalDrawer(
      controller: controller,
      mainPage: GestureDetector(
        onTap: () => controller.open(),
        child: MainPage(),
      ),
      drawer: CustomDrawer(),
      backgroundPage: GestureDetector(
        onTap: () => controller.close(),
        child: Container(
          color: Colors.redAccent,
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
          child: Text(
            "Wear mask to avoid pollution in traffic..",
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white12,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 150.0),
            child: Column(
              children: [
                Image.asset(
                  "assets/mask.png",
                  height: 150,
                  width: 150,
                ),
                Text("User Profile"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
