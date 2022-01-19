import 'package:flutter/material.dart';
import 'package:the_joker/ui/jokes.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: RandomJoke(),
      ),
    );
  }
}
