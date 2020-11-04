import 'package:flutter/material.dart';

void main() {
  runApp(new TileApp());
}

class TileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Center(
            child: Text('Expansion Tile Widget'),
          ),
        ),
        body: new ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return new StuffInTiles(listOfTiles[index]);
          },
          itemCount: listOfTiles.length,
        ),
      ),
    );
  }
}

class StuffInTiles extends StatelessWidget {
  final MyTile myTile;
  StuffInTiles(this.myTile);

  @override
  Widget build(BuildContext context) {
    return _buildTiles(myTile);
  }

  Widget _buildTiles(MyTile t) {
    if (t.children.isEmpty)
      return new ListTile(
          dense: true,
          enabled: true,
          isThreeLine: false,
          onLongPress: () => print("long press"),
          onTap: () => print("tap"),
          subtitle: new Text("Subtitle"),
          leading: new Text("Leading"),
          selected: true,
          trailing: new Text("trailing"),
          title: new Text(t.title));

    return new ExpansionTile(
      key: new PageStorageKey<int>(3),
      title: new Text(t.title),
      children: t.children.map(_buildTiles).toList(),
    );
  }
}

class MyTile {
  String title;
  List<MyTile> children;
  MyTile(this.title, [this.children = const <MyTile>[]]);
}

List<MyTile> listOfTiles = <MyTile>[
  new MyTile(
    'movies',
    <MyTile>[
      new MyTile(
        'Tamil Movies',
        <MyTile>[
          new MyTile('Movie 1'),
          new MyTile('Movie 2'),
          new MyTile('Movie 3'),
        ],
      ),
      new MyTile('Songs'),
      new MyTile('Bgms'),
    ],
  ),
  new MyTile(
    'Songs',
    <MyTile>[
      new MyTile('song 1'),
      new MyTile('song 2'),
    ],
  ),
  new MyTile(
    'Production',
    <MyTile>[
      new MyTile('Post Production'),
      new MyTile('Pre Production'),
      new MyTile(
        'Actors',
        <MyTile>[
          new MyTile('Hero'),
          new MyTile('Heroine'),
          new MyTile('Supportings'),
          new MyTile("Hero's Friends"),
          new MyTile('Comedians'),
          new MyTile('Motivational speakers'),
          new MyTile('Family characters'),
          new MyTile('etc..'),
        ],
      ),
    ],
  ),
];
