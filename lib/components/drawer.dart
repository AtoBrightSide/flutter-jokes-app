import 'package:flutter/material.dart';

Widget myDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: null,
          decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2016/03/10/18/32/bath-1248940_960_720.jpg"), fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 40,
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, '/categories');
          },
          leading: Icon(Icons.category),
          title: Text("Categories"),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, '/favs');
          },
          leading: Icon(Icons.favorite),
          title: Text("Favorites"),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, '/settings');
          },
          leading: Icon(Icons.settings),
          title: Text("Settings"),
        ),
      ],
    ),
  );
}
