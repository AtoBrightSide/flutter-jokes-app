import 'package:the_joker/models/joke_model.dart';

class JokesModel {
  late bool _error;
  late int _amount;
  late List <JokeModel> _jokes = [];
  
  JokesModel.fromJson(Map<String, dynamic> parsedJson) {
    _error = parsedJson['error'];
    _amount = parsedJson['amount'];
    for (int i=0; i<parsedJson['jokes'].length;i++){
      JokeModel joke = parsedJson['jokes'][i];
      _jokes.add(joke);
    }
  }
  bool get error => _error;
  int get amount => _amount;
  List <JokeModel> get jokes => _jokes;
}
