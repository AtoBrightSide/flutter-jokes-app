import 'package:flutter/material.dart';

class FavButton extends StatefulWidget {
  final bool pressed;
  const FavButton({required this.pressed});
  @override
  _FavButtonState createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  late bool pressed;
  late String joke;
  @override
  void initState() {
    pressed = widget.pressed;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          print(pressed);
          pressed = !pressed;
        });
      },
      child: (pressed)
          ? Icon(
              Icons.favorite,
              color: Colors.redAccent,
            )
          : Icon(
              Icons.favorite,
              color: Colors.white,
            ),
    );
  }
}
