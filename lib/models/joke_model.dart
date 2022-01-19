class JokeModel {
  late bool _error;
  late String _category;
  late String _type;
  late String _setup;
  late String _delivery;
  late bool _safe;

  JokeModel.fromJson(Map<String, dynamic> parsedJson) {
    _error = parsedJson['error'];
    _type = parsedJson['type'];
    _setup = parsedJson['setup'];
    _delivery = parsedJson['delivery'];
    _safe = parsedJson['safe'];
    _category = parsedJson['category'];
  }

  bool get error => _error;
  String get category => _category;
  String get type => _type;
  String get setup => _setup;
  String get delivery => _delivery;
  bool get safe => _safe;
}
