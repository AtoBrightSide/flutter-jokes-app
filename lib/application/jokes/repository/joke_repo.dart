import 'package:the_joker/application/jokes/data_provider/joke_provider.dart';
import 'package:the_joker/application/jokes/models/joke_model.dart';

class JokeRepo {
  final JokeProvider dataprovider;
  JokeRepo({required this.dataprovider});

  Future<JokeModel> getRandomJoke() async {
    return this.dataprovider.getRandomJoke();
  }

  Future<List<JokeModel>> getCategoryJokes(String category) async {
    return this.dataprovider.getCategoryJoke(category);
  }
}
