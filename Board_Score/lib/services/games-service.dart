import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:board_score/models/game.dart';
import 'package:http/http.dart' as http;

class GamesService {
  static const _apiUrl = "https://api.boardgameatlas.com/api/";
  Future<List<Game>> fetchGames() async {
    final response = await http.get(Uri.parse(
        '${_apiUrl}search?limit=100&client_id=${dotenv.env['BOARD_GAME_ATLAS_SECRET_API_KEY']}'));

    if (response.statusCode == 200) {
      Iterable decodedGames = json.decode(response.body)['games'];
      return List<Game>.from(decodedGames.map((g) => Game.fromJson(g)));
    } else {
      throw Exception('Failed to load games');
    }
  }
}
