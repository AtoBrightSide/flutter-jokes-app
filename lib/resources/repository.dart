import 'dart:async';
import 'package:the_joker/models/category_model.dart';

import 'provider.dart';
import 'package:the_joker/models/joke_model.dart';

class Repository {
  final provider = Provider();

  Future<JokeModel> fetchRandomJoke() => provider.fetchRandomJoke();
  Future<CategoryModel> getCategories() => provider.getCategories();
}
