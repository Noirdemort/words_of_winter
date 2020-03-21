import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class FavoritesView extends StatelessWidget {
  final Set<WordPair> _wordPairs;

  FavoritesView(this._wordPairs);

  final textWidget = (String word) => Container(

    alignment: Alignment.centerLeft,
    margin: const EdgeInsets.all(5),
    height: 40,
    child: Text( word,
      style: TextStyle(fontSize: 18),
    ),

  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Favorite Words'),),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [for(WordPair w in _wordPairs) textWidget(w.asPascalCase)],
      ),
    );

  }
}