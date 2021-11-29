import 'package:flutter/material.dart';
import 'package:the_joker/application/jokes/screens/joke_screen.dart';
import 'package:the_joker/screens/Categories.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (ListView(
      children: [
        new UserAccountsDrawerHeader(
          accountName: Text("Bogale Mebratu"),
          accountEmail: Text("mebrishBoge@gmail.com"),
          currentAccountPicture: new CircleAvatar(
            backgroundColor: Colors.blueAccent,
            child: Text("BM"),
          ),
        ),
        new ListTile(
          title: Text("Home"),
          trailing: Icon(Icons.category),
          onTap: () async {
            Navigator.pushNamed(context, JokeScreen.routeName);
          },
        ),
        new ListTile(
          title: Text("Categories"),
          trailing: Icon(Icons.category),
          onTap: () async {
            Navigator.pushNamed(context, Categories.routeName);
          },
        ),
        new ListTile(
          title: Text("Favorite Jokes"),
          trailing: Icon(Icons.favorite),
        ),
        new Divider(),
        new ListTile(
          title: Text("Settings"),
          trailing: Icon(Icons.settings),
        ),
        new ListTile(
          title: Text("Close"),
          trailing: Icon(Icons.close),
          onTap: () => Navigator.of(context).pop(),
        ),
      ],
    ));
  }
}
