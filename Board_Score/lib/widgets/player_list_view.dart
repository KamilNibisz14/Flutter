import 'package:board_score/widgets/player_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/game_score_bloc.dart';

class PlayerListView extends StatefulWidget {
  const PlayerListView({Key? key}) : super(key: key);

  @override
  State<PlayerListView> createState() => _PlayerListViewState();
}

class _PlayerListViewState extends State<PlayerListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameScoreBloc, GameScoreState>(
        builder: (context, state) {
          return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: state.gameData!.players.length,
              itemBuilder: (context, index){
                return InkWell(
                  onLongPress: (){
                    setState(() {
                      context.read<GameScoreBloc>().add(DeletePlayer(playerData: state.gameData!.players[index]));
                    });
                  },
                  child: CurrentPlayerData(
                    playerData: state.gameData!.players[index],
                  ),
                );
              }
          );
        });
  }
}
