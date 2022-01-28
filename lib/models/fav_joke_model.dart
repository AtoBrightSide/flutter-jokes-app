class FavJoke {
  final int id;
  final String type;
  final String setup;
  final String delivery;
  final String joke;

  FavJoke({
    required this.id,
    required this.type,
    required this.setup,
    required this.delivery,
    required this.joke,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'setup': setup,
      'delivery': delivery,
      'joke': joke,
    };
  }

  @override
  String toString() {
    return 'FavJoke(id: $id, type: $type, setup: $setup, delivery: $delivery, joke: $joke';
  }
}
