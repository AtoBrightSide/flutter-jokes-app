import 'dart:async';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:the_joker/models/joke_model.dart';

class JokeProvider {
  Client client = Client();

  Future<JokeModel> fetchRandomJoke() async {
    print("entered");
    final response =
        await client.get(Uri.parse("https://v2.jokeapi.dev/joke/Any"));
    print(response.body.toString());
    if (response.statusCode == 200) {
      return JokeModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed to load joke");
    }
  }
}
