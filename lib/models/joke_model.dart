class JokesModel {
  late bool _error;
  late int _amount;
  late List<_Jokes> _jokes = [];

  JokesModel.fromJson(Map<String, dynamic> parsedJson) {
    _error = parsedJson['error'];
    _amount = parsedJson['amount'];
    for (int i = 0; i < parsedJson['jokes'].length; i++) {
      _Jokes joke = _Jokes(parsedJson['jokes'][i]);
      _jokes.add(joke);
    }
  }
  bool get error => _error;
  int get amount => _amount;
  List<_Jokes> get jokes => _jokes;
}

class _Jokes {
  late bool _error;
  late String _category;
  late String _type;
  late String _joke;
  late String _setup;
  late String _delivery;
  late bool _safe;

  _Jokes(joke) {
    _error = joke['error'];
    _type = joke['type'];
    if (_type == "twopart") {
      _setup = joke['setup'];
      _delivery = joke['delivery'];
    } else {
      _joke = joke['joke'];
    }

    _safe = joke['safe'];
    _category = joke['category'];
  }

  bool get error => _error;
  String get category => _category;
  String get type => _type;
  String get joke => _joke;
  String get setup => _setup;
  String get delivery => _delivery;
  bool get safe => _safe;
}

class JokeModel {
  late bool _error;
  late String _category;
  late String _type;
  late String _joke;
  late String _setup;
  late String _delivery;
  late bool _safe;

  JokeModel.fromJson(Map<String, dynamic> parsedJson) {
    _error = parsedJson['error'];
    _type = parsedJson['type'];
    if (_type == "twopart") {
      _setup = parsedJson['setup'];
      _delivery = parsedJson['delivery'];
    } else {
      _joke = parsedJson['joke'];
    }
    _setup = parsedJson['setup'];
    _delivery = parsedJson['delivery'];
    _safe = parsedJson['safe'];
    _category = parsedJson['category'];
  }

  bool get error => _error;
  String get category => _category;
  String get type => _type;
  String get joke => _joke;
  String get setup => _setup;
  String get delivery => _delivery;
  bool get safe => _safe;
}
