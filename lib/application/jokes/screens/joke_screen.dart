import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_joker/application/jokes/bloc/joke_bloc.dart';
import 'package:the_joker/application/jokes/bloc/joke_state.dart';
import 'package:the_joker/application/jokes/models/joke_model.dart';
import 'package:the_joker/components/favorites-button.dart';
import 'package:the_joker/components/side-bar.dart';

class JokeScreen extends StatefulWidget {
  const JokeScreen({Key? key}) : super(key: key);
  static const String routeName = "/joke_screen";

  @override
  _JokeScreenState createState() => _JokeScreenState();
}

class _JokeScreenState extends State<JokeScreen> {
  @override
  Widget build(BuildContext context) {
    final jokeBloc = BlocProvider.of<JokeBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: new Text(
          "JOKES",
          style: TextStyle(
            // color: Colors.deepPurple,
            fontStyle: FontStyle.normal,
          ),
        ),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
        // backgroundColor: new Color(0xFFFF9000),
      ),
      drawer: Drawer(
        child: SideBar(),
      ),
      body: Center(
        child: BlocBuilder<JokeBloc, JokeState>(
          builder: (_, jokeState) {
            print(jokeState);
            if (jokeState is JokeLoading || jokeState is JokesLoading) {
              return CircularProgressIndicator();
            }
            if (jokeState is JokeLoaded) {
              final joke = jokeState.getJoke;
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Text(
                    joke.setup,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              );
            }
            return Container();
          },
        ),
      ),
      backgroundColor: new Color(0x69881255),
    );
  }
}
/*
Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Text(
                    "Sample Joke",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new Icon(
                  Icons.arrow_left,
                  size: 52,
                  color: Colors.orange,
                ),
                Fav(),
                new Icon(
                  Icons.arrow_right,
                  size: 52,
                  color: Colors.orange,
                ),
              ],
            )
          ],
        ),
      */