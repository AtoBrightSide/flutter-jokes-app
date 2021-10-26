import 'package:flutter/material.dart';
import 'package:the_joker/screens/HomePage.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName:(BuildContext context) => HomePage(),
      },
    )
  );
}