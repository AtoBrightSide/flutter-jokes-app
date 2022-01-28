import 'package:flutter/material.dart';
import 'package:the_joker/components/favorites_button.dart';
import 'package:the_joker/models/joke_model.dart';
import 'package:the_joker/blocs/joke_bloc.dart';

class RandomJoke extends StatelessWidget {
  static const String routeName = "/random-joke";

  myFetcher() {
    bloc.fetchRandomJoke();
  }

  @override
  Widget build(BuildContext context) {
    myFetcher();
    return StreamBuilder(
      stream: bloc.randomJoke,
      builder: (context, AsyncSnapshot<JokeModel> snapshot) {
        if (snapshot.hasData) {
          return show(snapshot);
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget show(AsyncSnapshot snapshot) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        (snapshot.data!.type.toString() == "twopart")
            ? (Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        snapshot.data!.setup.toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        snapshot.data!.delivery.toString(),
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ))
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    snapshot.data!.joke.toString(),
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FavButton(
              pressed: false,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Icon(
                Icons.autorenew,
                size: 50,
              ),
              onTap: () {
                myFetcher();
              },
            ),
          ],
        ),
      ],
    );
  }
}
