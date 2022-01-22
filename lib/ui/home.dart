import 'package:flutter/material.dart';
import 'package:the_joker/components/drawer.dart';
import 'package:the_joker/ui/jokes.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jokes"),
      ),
      drawer: myDrawer(context),
      body: RandomJoke(),
    );
  }
}
