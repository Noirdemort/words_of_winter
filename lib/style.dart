import 'package:flutter/material.dart';

class TextSize {
  static const double Large = 26.0,
      Medium = 20.0,
      Small = 14.0,
      Body = 16.0;
}

const String FontNameDefault = 'Montserrat';

const Body1TextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: 26.0,
  color: Colors.black,
);


const AppBarTextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: TextSize.Medium,
    color: Colors.white
);


const TitleTextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: TextSize.Large,
    color: Colors.black
);