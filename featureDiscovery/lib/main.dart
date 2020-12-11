import 'package:flutter/material.dart';
import 'package:feature_discovery/feature_discovery.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MaterialApp(
        home: FeatureDiscovery(
          recordStepsInSharedPreferences: false,
          child: DemoApp(),
        ),
      ),
    );
  }
}

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      FeatureDiscovery.discoverFeatures(context, <String>[
        'feature 1',
        'feature 2',
        'feature 3',
        'feature 4',
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DescribedFeatureOverlay(
          featureId: 'feature 2',
          targetColor: Colors.white,
          textColor: Colors.white,
          backgroundColor: Colors.blue,
          contentLocation: ContentLocation.below,
          title: Text(
            'Menu Icon',
            style: TextStyle(fontSize: 20.0),
          ),
          pulseDuration: Duration(seconds: 1),
          enablePulsingAnimation: true,
          //  barrierDismissible: false,
          overflowMode: OverflowMode.clipContent,
          openDuration: Duration(seconds: 1),
          description: Text(
              "This is a menu,\n you can tap to view menu contents,\n but now nothing is added,lol."),
          tapTarget: Icon(Icons.menu),
          child: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        title: Text('Demo App'),
        centerTitle: true,
        actions: [
          DescribedFeatureOverlay(
            featureId: 'feature 3',
            targetColor: Colors.white,
            textColor: Colors.black,
            backgroundColor: Colors.amber,
            contentLocation: ContentLocation.trivial,
            title: Text(
              'Search Icon',
              style: TextStyle(fontSize: 20.0),
            ),
            pulseDuration: Duration(seconds: 1),
            enablePulsingAnimation: true,
            barrierDismissible: false,
            overflowMode: OverflowMode.wrapBackground,
            openDuration: Duration(seconds: 1),
            description: Text(
                "This is a search button,\n you can tap on this to search contents."),
            tapTarget: Icon(Icons.search),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: DescribedFeatureOverlay(
            featureId: 'feature 1',
            targetColor: Colors.white,
            textColor: Colors.black,
            backgroundColor: Colors.purpleAccent,
            contentLocation: ContentLocation.above,
            title: Text(
              'This is Button',
              style: TextStyle(fontSize: 20.0),
            ),
            pulseDuration: Duration(seconds: 1),
            enablePulsingAnimation: true,
            barrierDismissible: false,
            overflowMode: OverflowMode.extendBackground,
            openDuration: Duration(seconds: 1),
            description:
                Text("This is a button,you can tap and play on this,lol."),
            tapTarget: Icon(Icons.radio_button_unchecked),
            child: RaisedButton(
              child: Text('Button'),
              onPressed: () {},
              color: Colors.green,
            ),
          ),
        ),
      ),
      bottomNavigationBar: DescribedFeatureOverlay(
        featureId: 'feature 4',
        targetColor: Colors.white,
        textColor: Colors.black,
        backgroundColor: Colors.lightBlueAccent,
        contentLocation: ContentLocation.trivial,
        title: Text(
          'This is Button',
          style: TextStyle(fontSize: 20.0),
        ),
        pulseDuration: Duration(seconds: 1),
        enablePulsingAnimation: true,
        overflowMode: OverflowMode.extendBackground,
        openDuration: Duration(seconds: 1),
        description: Text("This is a button,\n which shows your home page."),
        tapTarget: Icon(Icons.navigation),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              title: Text("Double Done!"),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text("Notification"),
              icon: Icon(Icons.notifications_active),
            ),
            BottomNavigationBarItem(
              title: Text("Members"),
              icon: Icon(Icons.card_membership),
            ),
          ],
        ),
      ),
    );
  }
}
