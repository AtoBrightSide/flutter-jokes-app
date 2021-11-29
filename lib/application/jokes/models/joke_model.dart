class JokeModel {
  final category;
  final type;
  final setup;
  final delivery;

  JokeModel({
    this.category,
    this.delivery,
    this.setup,
    this.type,
  });

  factory JokeModel.fromJson(Map<String, dynamic> json) {
    return JokeModel(
      category: json['category'],
      delivery: json['delivery'],
      setup: json['setup'],
      type: json['type'],
    );
  }
}
