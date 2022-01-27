import 'package:flutter/material.dart';
import 'package:the_joker/components/drawer.dart';

class Settings extends StatelessWidget {
  static const String routeName = "/settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Settings"),
        ),
        leading: Icon(Icons.settings),
      ),
      drawer: myDrawer(context),
    );
  }
}
