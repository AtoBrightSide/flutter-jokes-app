import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:the_joker/ui/categories.dart';
import 'package:the_joker/ui/category_jokes.dart';
import 'package:the_joker/ui/favorites.dart';
import 'package:the_joker/ui/home.dart';
import 'package:the_joker/ui/settings.dart';
import 'package:path/path.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final database = openDatabase(
    join(await getDatabasesPath(), "favorite_jokes.db"),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE fav_jokes(id INTEGER PRIMARY KEY, type TEXT, setup TEXT, delivery TEXT, joke TEXT)'
      );
    },
    version: 1,
  );
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
