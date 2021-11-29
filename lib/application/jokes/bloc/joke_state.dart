import 'package:the_joker/application/jokes/models/joke_model.dart';

abstract class JokeState {}

class JokeLoading extends JokeState {}

class JokesLoading extends JokeState {}

class JokesLoaded extends JokeState {
  final List<JokeModel> jokes;
  JokesLoaded(this.jokes);

  List<JokeModel> get getJokes => jokes;
}

class JokeLoaded extends JokeState {
  final JokeModel joke;
  JokeLoaded(this.joke);

  JokeModel get getJoke => joke;
}

class LoadJokesFailed extends JokeState {}
