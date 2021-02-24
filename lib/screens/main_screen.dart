import 'package:flutter/material.dart';

import '../widgets/drawer_button.dart';

class MainScreen extends StatelessWidget {
  static const routeName = "/mainScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DrawerButton(
          onPressed: () {},
        ),
        actions: [],
      ),
      body: Container(
        child: Center(
          child: Text("Baity"),
        ),
      ),
    );
  }
}
