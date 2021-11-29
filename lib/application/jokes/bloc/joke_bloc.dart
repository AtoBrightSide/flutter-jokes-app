import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_joker/application/jokes/bloc/joke_event.dart';
import 'package:the_joker/application/jokes/bloc/joke_state.dart';
import 'package:the_joker/application/jokes/models/joke_model.dart';
import 'package:the_joker/application/jokes/repository/joke_repo.dart';

class JokeBloc extends Bloc<JokeEvent, JokeState> {
  final JokeRepo repository;

  JokeBloc(this.repository) : super(JokeLoading());

  @override
  Stream<JokeState> mapEventToState(JokeEvent event) async* {
    if (event is FetchCategoryJokes) {
      // loading jokes
      print("loading jokes");
      yield JokesLoading();
      try {
        List<JokeModel> jokes =
            await repository.getCategoryJokes(event.props[0].toString());
        print(jokes);
        yield JokesLoaded(jokes);
      } catch (e) {
        yield LoadJokesFailed();
      }
    }

    if (event is FetchRandomJoke) {
      print("loading joke");
      yield JokeLoading();
      try {
        JokeModel joke = await repository.getRandomJoke();
        print(joke);
        yield JokeLoaded(joke);
      } catch (e) {
        yield LoadJokesFailed();
      }
    }
  }
}
