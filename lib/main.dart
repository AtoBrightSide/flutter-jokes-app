import 'package:flutter/material.dart';
import 'package:the_joker/ui/categories.dart';
import 'package:the_joker/ui/category_jokes.dart';
import 'package:the_joker/ui/favorites.dart';
import 'package:the_joker/ui/home.dart';
import 'package:the_joker/ui/settings.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        Categories.routeName: (context) => Categories(),
        CategoryJokes.routeName: (context) => CategoryJokes(
              category: '',
            ),
        Favorites.routeName: (context) => Favorites(),
        Settings.routeName: (context) => Settings(),
      },
    );
  }
}
