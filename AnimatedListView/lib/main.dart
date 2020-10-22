import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  List<String> _items = [
    "Hi friend",
    "How are you",
    "are you bored",
    "join me,for a cup of coffee",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AnimatedList Widget"),
        ),
        body: AnimatedList(
            key: _key,
            initialItemCount: _items.length,
            itemBuilder: (context, index, animation) {
              return _buildItem(_items[index], animation, index);
            }),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _addItem(),
        ),
      ),
    );
  }

  Widget _buildItem(String item, Animation animation, int index) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        elevation: 3,
        child: ListTile(
          title: Text(
            item,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text("You funny guy..."),
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.redAccent,
            ),
            onPressed: () {
              _removeItem(index);
            },
          ),
        ),
      ),
    );
  }

  void _removeItem(int i) {
    String removedItems = _items.removeAt(i);
    AnimatedListRemovedItemBuilder builder = (contect, animation) {
      return _buildItem(removedItems, animation, i);
    };
    _key.currentState.removeItem(i, builder);
  }

  void _addItem() {
    int i = _items.length > 0 ? _items.length : 0;
    _items.insert(i, 'Items ${_items.length + 1}');
    _key.currentState.insertItem(i);
  }
}
