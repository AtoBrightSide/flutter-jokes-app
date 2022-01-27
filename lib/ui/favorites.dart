import 'package:flutter/material.dart';
import 'package:the_joker/components/drawer.dart';

class Favorites extends StatelessWidget {
  static const String routeName = "/favorites";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Your Favorite Jokes"),
        ),
      ),
      drawer: myDrawer(context),
    );
  }
}
