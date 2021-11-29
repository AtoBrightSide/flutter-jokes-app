import 'package:equatable/equatable.dart';

abstract class JokeEvent extends Equatable {}

class FetchCategoryJokes extends JokeEvent {
  final String category;
  FetchCategoryJokes(this.category);
  List<Object?> get props => [category];
}

class FetchRandomJoke extends JokeEvent {
  FetchRandomJoke();
  @override
  List<Object?> get props => [];
}
