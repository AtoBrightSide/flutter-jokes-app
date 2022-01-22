import 'package:the_joker/models/joke_model.dart';
import 'package:the_joker/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class JokesBloc {
  final _repository = Repository();
  final _jokesFetcher = PublishSubject<JokesModel>();

  Observable<JokesModel> get categoryJokes => _jokesFetcher.stream;

  fetchCategoryJokes(String category) async {
    JokesModel jokeModel = await _repository.fetchCategoryJokes(category);
    _jokesFetcher.sink.add(jokeModel);
  }

  dispose() {
    _jokesFetcher.close();
  }
}

final bloc = JokesBloc();
