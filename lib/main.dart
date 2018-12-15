import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//void main() => runApp(MyApp());

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new MaterialApp(
//      title: 'Startup Name Generator',
//      theme: new ThemeData(
//        primaryColor: Colors.white,
//      ),
//      home: new RandomWord()
//    );
//  }
//}
//
//class RandomWordsState extends State<RandomWord> {
//  final List<WordPair> _suggestions = <WordPair>[];
//  final Set<WordPair> _saved = new Set<WordPair>(); //for saving the favrt words.
//  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);
//
//  Widget _buildSuggestions(){
//    return new ListView.builder(
//        padding: const EdgeInsets.all(16.0),
//        itemBuilder: (BuildContext _context, int i){
//      if (i.isOdd) {
//        return new Divider();
//      }
//      final int index = i ~/ 2;
//      if (index >= _suggestions.length) {
//        // ...then generate 10 more and add them to the
//        // suggestions list.
//        _suggestions.addAll(generateWordPairs().take(10));
//      }
//      return _buildRow(_suggestions[index]);
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
////    final wordPair = new WordPair.random();
////    return new Text(wordPair.asPascalCase);
//  //basic Material Design visual layout
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Startup Name Generator'),
//        actions: <Widget>[
//          new IconButton(icon: const Icon(Icons.list), onPressed: _pushSaved),
//        ],
//      ),
//      body: _buildSuggestions(),
//    );
//  }
//
//  Widget _buildRow(WordPair pair) {
//    final bool alreadySaved = _saved.contains(pair);
//    return new ListTile(
//      title: new Text(
//        pair.asPascalCase,
//        style: _biggerFont,
//      ),
//      trailing: new Icon(
//        alreadySaved ? Icons.favorite : Icons.favorite_border,
//        color: alreadySaved ? Colors.red : null,
//      ),
//      onTap: (){
//        setState(() {
//          if(alreadySaved){
//            _saved.remove(pair);
//          }else{
//            _saved.add(pair);
//          }
//        });
//      },
//    );
//
//  }
//
//  void _pushSaved(){
//    Navigator.of(context).push(
//      new MaterialPageRoute<void>(
//          builder: (BuildContext context){
//            final Iterable<ListTile> tiles = _saved.map(
//                (WordPair pair){
//                  return new ListTile(
//                    title: new Text(
//                      pair.asPascalCase,
//                      style: _biggerFont,
//                    ),
//                  );
//                },
//            );
//            final List<Widget> divided = ListTile
//            .divideTiles(
//                context: context,
//                tiles: tiles,
//            )
//            .toList();
//
//            return new Scaffold(
//              appBar: new AppBar(
//                title: const Text('saved suggestions'),
//              ),
//              body: new ListView(children: divided,),
//            );
//          })
//    );
//  }
//}
//
//class RandomWord extends StatefulWidget {
//  @override
//  RandomWordsState createState() {
//    return new RandomWordsState();
//  }
//}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final title = 'Basic List';
//
//    return MaterialApp(
//      title: title,
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text(title),
//        ),
//        body: ListView(
//          children: <Widget>[
//            ListTile(
//              leading: Icon(Icons.map),
//              title: Text('Map'),
//            ),
//            ListTile(
//              leading: Icon(Icons.photo_album),
//              title: Text('Album'),
//            ),
//            ListTile(
//              leading: Icon(Icons.phone),
//              title: Text('Phone'),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}

//void main() {
//  runApp(MyApp(
//      items: List<String>.generate(10000, (i) => "Item $i"),
//  ));
//}

//class MyApp extends StatelessWidget {
//  final List<String> items;
//
//  MyApp({Key key, @required this.items}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    final title = 'Long List';
//
//    return MaterialApp(
//      title: title,
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text(title),
//        ),
//        body: ListView.builder(
//          itemCount: items.length,
//          itemBuilder: (context, index) {
//            return ListTile(
//              title: Text('${items[index]}'),
//            );
//          },
//        ),
//      ),
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final title = 'Grid List';
//
//    return MaterialApp(
//      title: title,
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text(title),
//        ),
//        body: GridView.count(
//          // Create a grid with 2 columns. If you change the scrollDirection to
//          // horizontal, this would produce 2 rows.
//          crossAxisCount: 3,
//          // Generate 100 Widgets that display their index in the List
//          children: List.generate(100, (index) {
//            return Center(
//              child: Text(
//                'Item $index',
//                style: Theme.of(context).textTheme.headline,
//              ),
//            );
//          }),
//        ),
//      ),
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final title = 'Horizontal List';
//
//    return MaterialApp(
//      title: title,
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text(title),
//        ),
//        body: Container(
//          margin: EdgeInsets.symmetric(vertical: 20.0),
//          height: 200.0,
//          child: ListView(
//            scrollDirection: Axis.horizontal,
//            children: <Widget>[
//              Container(
//                width: 160.0,
//                color: Colors.red,
//              ),
//              Container(
//                width: 160.0,
//                color: Colors.blue,
//              ),
//              Container(
//                width: 160.0,
//                color: Colors.green,
//              ),
//              Container(
//                width: 160.0,
//                color: Colors.yellow,
//              ),
//              Container(
//                width: 160.0,
//                color: Colors.orange,
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}


//void main() {
//  runApp(MyApp(
//    items: List<ListItem>.generate(
//    1000,
//        (i) => i % 6 == 0
//        ? HeadingItem("Heading $i")
//        : MessageItem("Sender $i", "Message body $i"),
//  ),
//  ));
//}
//
//class MyApp extends StatelessWidget {
//  final List<ListItem> items;
//
//  MyApp({Key key, @required this.items}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    final title = 'Mixed List';
//
//    return MaterialApp(
//      title: title,
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text(title),
//        ),
//        body: ListView.builder(
//          // Let the ListView know how many items it needs to build
//          itemCount: items.length,
//          // Provide a builder function. This is where the magic happens! We'll
//          // convert each item into a Widget based on the type of item it is.
//          itemBuilder: (context, index) {
//            final item = items[index];
//
//            if (item is HeadingItem) {
//              return ListTile(
//                title: Text(
//                  item.heading,
//                  style: Theme.of(context).textTheme.headline,
//                ),
//              );
//            } else if (item is MessageItem) {
//              return ListTile(
//                title: Text(item.sender),
//                subtitle: Text(item.body),
//              );
//            }
//          },
//        ),
//      ),
//    );
//  }
//}
//
//// The base class for the different types of items the List can contain
//abstract class ListItem {}
//
//// A ListItem that contains data to display a heading
//class HeadingItem implements ListItem {
//  final String heading;
//
//  HeadingItem(this.heading);
//}
//
//// A ListItem that contains data to display a message
//class MessageItem implements ListItem {
//  final String sender;
//  final String body;
//
//  MessageItem(this.sender, this.body);
//}'
void main() {
  runApp(
    Center(
      child: Text(
        'Hello, world!',
        textDirection: TextDirection.rtl,
      ),
    ),
  );
}