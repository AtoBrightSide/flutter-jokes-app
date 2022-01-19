import 'package:flutter/material.dart';
import 'package:the_joker/models/joke_model.dart';
import 'package:the_joker/blocs/jokes_bloc.dart';

class RandomJoke extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchRandomJoke();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Joke",
        ),
      ),
      body: StreamBuilder(
        stream: bloc.randomJoke,
        builder: (context, AsyncSnapshot<JokeModel> snapshot) {
          if (snapshot.hasData) {
            return (show(snapshot));
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Widget show(AsyncSnapshot<JokeModel> snapshot) {
    return ListTile(
      leading: const Icon(Icons.flight_land),
      title: Text(snapshot.data!.setup.toString()),
      subtitle: Text(snapshot.data!.delivery.toString()),
    );
  }
}
