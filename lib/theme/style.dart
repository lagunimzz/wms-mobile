import 'package:flutter/material.dart';
import 'package:wmsmobile/main.dart';

ThemeData appTheme() {
  return ThemeData(
      primaryColor: Colors.orange,
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      // accentColor: Colors.black,
      hintColor: Colors.black,
      dividerColor: Colors.white,
      buttonColor: Colors.white,
      scaffoldBackgroundColor: Colors.orange[50],
      fontFamily: 'Kanit'
      // canvasColor: Colors.black,
      );
}
