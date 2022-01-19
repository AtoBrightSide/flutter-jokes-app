import 'package:the_joker/resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:the_joker/models/joke_model.dart';

class JokeBloc {
  final _repository = Repository();
  final _jokeFetcher = PublishSubject<JokeModel>();

  Observable<JokeModel> get randomJoke => _jokeFetcher.stream;

  fetchRandomJoke() async {
    JokeModel jokeModel = await _repository.fetchRandomJoke();
    _jokeFetcher.sink.add(jokeModel);
  }

  dispose() {
    _jokeFetcher.close();
  }
}

final bloc = JokeBloc();
