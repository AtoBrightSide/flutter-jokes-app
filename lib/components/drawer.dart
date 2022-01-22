import 'package:flutter/material.dart';

Widget myDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
          ),
          child: Text('Drawer Header'),
        ),
        SizedBox(
          height: 40,
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, '/categories');
          },
          title: Text("Categories"),
        ),
      ],
    ),
  );
}
