import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//basic of widget..how to run your first code in flutter
////main is the starting point of the flutter
////inside main method runApp method is called for the starting of the app.
////first widget is Center
////child widget of center is text
////hint of closing of widget is always shown in comment line
////void main() {
////  runApp(
////    Center(
////      child: Text(
////        'Hello, world!',
////        textDirection: TextDirection.rtl,
////      ),
////    ),
////  );
////}

void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: MyScaffold(),
  ));
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  // Fields in a Widget subclass are always marked "final".
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        // <Widget> is the type of items in the list.
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child to fill the available space.
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Container(
            constraints: BoxConstraints.expand(
              height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
            ),
            padding: const EdgeInsets.all(8.0),
            color: Colors.teal.shade700,
            alignment: Alignment.center,
            child: Text('Hello World', style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white)),
            foregroundDecoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://www.example.com/images/frame.png'),
                centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
              ),
            ),
            transform: Matrix4.rotationZ(0.1),
          ),

          Expanded(
            child: Center(
//              child: Text('Hello, world!'),
            child: Container(
              margin: const EdgeInsets.all(10.0),
              color: const Color(0xFF00FF00),
              width: 200.0,
              height: 50.0,
            ),
            ),
          ),
        ],
      ),
    );
  }
}