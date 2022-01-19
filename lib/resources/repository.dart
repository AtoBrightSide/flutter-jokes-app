import 'dart:async';
import 'joke_provider.dart';
import 'package:the_joker/models/joke_model.dart';

class Repository {
  final jokesProvider = JokeProvider();

  Future<JokeModel> fetchRandomJoke() => jokesProvider.fetchRandomJoke();
}
