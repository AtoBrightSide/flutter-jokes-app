import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Joke> fetchJoke() async {
  final response = await http.get(Uri.parse('https://v2.jokeapi.dev/joke/Pun'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Joke.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Joke');
  }
}

class Joke {
  final String category;
  final String setup;
  final String delivery;
  final int id;

  Joke({
    required this.category,
    required this.setup,
    required this.delivery,
    required this.id
  });

  factory Joke.fromJson(Map<String, dynamic> json) {
    return Joke(
      category: json['category'],
      setup: json['setup'],
      delivery: json['delivery'],
      id: json['id'],
    );
  }
}