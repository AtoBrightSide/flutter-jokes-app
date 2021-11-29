import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);
  static const String routeName = "/categories";

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        new ListTile(
          title: Text("Home"),
          trailing: Icon(Icons.category),
        ),
        new ListTile(
          title: Text("Categories"),
          trailing: Icon(Icons.category),
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
    );
  }
}
