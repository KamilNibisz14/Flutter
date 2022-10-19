
class PlayerData{
  final String name;
  final int points;
  PlayerData({required this.name, required this.points});
}
class GameTable{
  final String id;
  final String winner;
  final List<PlayerData> players;
  GameTable({required this.id, required this.winner, required this.players});
}