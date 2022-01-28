import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:the_joker/components/drawer.dart';
import 'package:the_joker/models/fav_joke_model.dart';
import 'package:path/path.dart';

class Favorites extends StatelessWidget {
  static const String routeName = "/favorites";

  Future<List<FavJoke>> favs() async {
    final database =
        openDatabase(join(await getDatabasesPath(), "favorite_jokes.db"));
    final db = await database;

    final List<Map<String, dynamic>> maps = await db.query('fav_jokes');
    print("these are the maps: $maps");
    return List.generate(maps.length, (index) {
      return FavJoke(
        id: maps[index]['id'],
        delivery: maps[index]['delivery'],
        joke: maps[index]['joke'],
        setup: maps[index]['setup'],
        type: maps[index]['type'],
      );
    });
  }
  
  awaitFavs() async {
    print(await favs());
  }

  @override
  Widget build(BuildContext context) {
    awaitFavs();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Your Favorite Jokes")),
      ),
      drawer: myDrawer(context),
      body: Container(),
    );
  }
}
