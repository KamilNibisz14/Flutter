import 'package:board_score/services/games-service.dart';
import 'package:flutter/material.dart';
import '../models/game.dart';
import 'game_tile.dart';


class GameList extends StatelessWidget {
  GameList({required this.gameList, Key? key}) : super(key: key);

  List<Game> gameList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 90, left: 40, right: 40),
      child: GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1 / 2,
            crossAxisCount: 2,
            crossAxisSpacing: 20),
        itemCount: gameList.length,
        itemBuilder: (buildContext, index) {
          return GameTile(
              gameName: gameList[index].name,
              image: Image.network(
                gameList[index].imageUrl,
                errorBuilder: (_, __, ___) => Image.network('https://zwierzetarnia.pl/assets/camaleon_cms/image-not-found-4a963b95bf081c3ea02923dceaeb3f8085e1a654fc54840aac61a57a60903fef.png'),
                ),);
        },
      ),
    );
  }
}


/*
class GameList extends StatelessWidget {
  const GameList({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
        margin: const EdgeInsets.only(top: 90, left: 40, right: 40),
        child: SizedBox(
            child: FutureBuilder(
                future: GamesService.fetchGames(),
                builder: ((context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 1 / 2,
                              crossAxisCount: 2,
                              crossAxisSpacing: 20),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (buildContext, index) {
                        return GameTile(
                            gameName: snapshot.data![index].name,
                            image:
                                Image.network(snapshot.data![index].imageUrl));
                      },
                    );
                  }
                }))));
  }
}*/
