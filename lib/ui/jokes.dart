import 'package:flutter/material.dart';
import 'package:the_joker/models/joke_model.dart';
import 'package:the_joker/blocs/jokes_bloc.dart';

class RandomJoke extends StatelessWidget {
  static const String routeName = "/random-joke";
  @override
  Widget build(BuildContext context) {
    bloc.fetchRandomJoke();
    return StreamBuilder(
      stream: bloc.randomJoke,
      builder: (context, AsyncSnapshot<JokeModel> snapshot) {
        if (snapshot.hasData) {
          return ListTile(
            title: Text(
              snapshot.data!.setup.toString(),
              style: TextStyle(fontSize: 30),
            ),
            subtitle: Text(
              snapshot.data!.delivery.toString(),
              style: TextStyle(fontSize: 25),
            ),
          );
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
