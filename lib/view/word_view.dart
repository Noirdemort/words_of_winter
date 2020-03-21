import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'favorites.dart';

class WordView extends StatefulWidget {

  @override
  RandomWordsState createState() => RandomWordsState();

}

class RandomWordsState extends State<WordView> {

  final _randomWordPairs = <WordPair>[];
  final _savedWordPairs = Set<WordPair>();

  Widget _buildList() {
    return ListView.builder(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, item) {

        if (item.isOdd) return Divider();

        final index = item~/2;

        if(index >= _randomWordPairs.length) {
            _randomWordPairs.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_randomWordPairs[index]);
      }
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _savedWordPairs.contains(pair);
    return ListTile(
      title: Text(pair.asPascalCase,
        style: TextStyle(
          fontSize: 18,
        ),
      ),

      trailing: Icon(alreadySaved ? Icons.favorite : Icons.favorite_border, color: alreadySaved ? Colors.red : null),
      onTap: () => {
        setState(() {
          if (alreadySaved){
            _savedWordPairs.remove(pair);
          } else {
            _savedWordPairs.add(pair);
          }
        })
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Word Pair Generator"),

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.bookmark),
            onPressed: () => {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => FavoritesView(_savedWordPairs)),
              )
            },
          )
        ],
      ),

      body: _buildList(),
    );
  }

}