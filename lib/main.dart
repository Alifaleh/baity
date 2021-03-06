import "package:flutter/material.dart";

// models
import './models/main_theme.dart';

// screens
import './screens/tab_screen.dart';

void main() {
  runApp(Baity());
}

class Baity extends StatelessWidget {
  const Baity({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      initialRoute: TabScreen.routeName,
      routes: {
        TabScreen.routeName: (ctx) => TabScreen(),
      },
    );
  }
}
