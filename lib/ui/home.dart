import 'package:flutter/material.dart';
import 'package:the_joker/components/drawer.dart';
import 'package:the_joker/ui/joke.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Jokes")),
      ),
      drawer: myDrawer(context),
      body: RandomJoke(),
    );
  }
}
