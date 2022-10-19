class Game {
  final String id;
  final String name;
  final String imageUrl;

  const Game({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      id: json['id'],
      name: json['name'],
      imageUrl: json['image_url'],
    );
  }
}
