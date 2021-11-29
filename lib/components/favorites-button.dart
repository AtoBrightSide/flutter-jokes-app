import 'package:flutter/material.dart';

class Fav extends StatefulWidget {
  const Fav({Key? key}) : super(key: key);

  @override
  _FavState createState() => _FavState();
}

class _FavState extends State<Fav> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return (GestureDetector(
      child: new Icon(
        selected ? Icons.favorite : Icons.favorite_border_outlined,
        size: 35,
        color: Colors.pink,
      ),
      onTap: () {
        setState(() {
          (selected)
              ? print("current state is true")
              : print("current state is false");
          selected = !selected;
        });
      },
    ));
  }
}
