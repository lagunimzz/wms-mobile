import 'package:flutter/material.dart';
import 'package:wmsmobile/main.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: HexColor.fromHex('#C1ACFC'),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: HexColor.fromHex('#31ED13'),
      ),
    ),
    accentColor: HexColor.fromHex('#D4E8FF'),
    hintColor: Colors.white,
    dividerColor: Colors.white,
    buttonColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    // canvasColor: Colors.black,
  );
}
