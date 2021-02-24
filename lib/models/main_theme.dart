import 'package:flutter/material.dart';

ThemeData mainTheme = ThemeData(
  primaryColor: Color(0xff0b3352),
  accentColor: Colors.white,
  textTheme: TextTheme(
    headline1: TextStyle(
      color: Colors.white,
      fontSize: 30,
    ),
    bodyText2: TextStyle(
      color: Colors.white,
      fontSize: 11,
    ),
  ),
  tabBarTheme: TabBarTheme(
    indicator: BoxDecoration(
      color: Color(0x00000000),
    ),
    unselectedLabelColor: Colors.white,
    labelColor: Colors.black,
  ),
);
