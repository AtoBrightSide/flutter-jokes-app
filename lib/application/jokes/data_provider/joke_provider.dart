import 'dart:async';
import 'package:dio/dio.dart';
import 'package:the_joker/application/jokes/models/joke_model.dart';

class JokeProvider {
  final Dio dio;
  JokeProvider({required this.dio});

  Future<JokeModel> getRandomJoke() async {
    try {
      final res = await dio.get("https://v2.jokeapi.dev/joke/Any");
      print(res);
      return (res.data['data']).map((e) => JokeModel.fromJson(e));
    } catch (e) {
      print(e);
      throw (e);
    }
  }

  Future<List<JokeModel>> getCategoryJoke(String category) async {
    try {
      final res =
          await dio.get("https://v2.jokeapi.dev/joke/$category?amount=10");
      print(res);
      return (res.data['jokes'] as List)
          .map((e) => JokeModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
      throw (e);
    }
  }
}
