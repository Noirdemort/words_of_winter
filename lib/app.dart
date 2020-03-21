import 'package:flutter/material.dart';
import 'package:words_of_winter/view/word_view.dart';
import 'style.dart';


class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: WordView(),

      theme: ThemeData(
          appBarTheme: AppBarTheme(
              textTheme: TextTheme(title: AppBarTextStyle)
          ),
          textTheme: TextTheme(
              title: TitleTextStyle,
              body1: Body1TextStyle
          )
      ),

    );

  }
}
