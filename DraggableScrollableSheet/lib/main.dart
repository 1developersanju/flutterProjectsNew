import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("Draggable Scrollable Sheet"),
        // ),
        body: Stack(
          children: <Widget>[
            Image(
              image: AssetImage('assets/Wallpaper.jpeg'),
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DraggableScrollableSheet(
                builder: (context, controller) {
                  return Container(
                    child: ListView.builder(
                      itemCount: 10,
                      controller: controller,
                      itemBuilder: (BuildContext context, index) {
                        return ListTile(
                          title: Text('Contact ${index + 1}'),
                        );
                      },
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
