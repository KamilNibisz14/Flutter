import 'package:bloc/bloc.dart';
import 'package:board_score/models/game_table.dart';
import 'package:equatable/equatable.dart';

part 'game_score_event.dart';
part 'game_score_state.dart';

class GameScoreBloc extends Bloc<GameScoreEvent, GameScoreState> {
  final List<GameTable> gameData=[];
  late int currentIndex;
  GameScoreBloc() : super(GameScoreState()){
    on<SearchGameIndex>(_onSearchGameIndex);
    on<AddPlayerData>(_onAddPlayerData);
    on<AddPoints>(_onAddPoints);
    on<RemovePoint>(_onRemovePoint);
    on<DeletePlayer>(_onDeletePlayer);
  }
  void _onSearchGameIndex(SearchGameIndex event, Emitter<GameScoreState> emit){
   final String gameID = event.gameID;
    bool isIDFound = false;
    for(int i = 0; i < gameData.length; ++i) {
      if(gameData[i].id == gameID){
        currentIndex = i;
        isIDFound = true;
      }
    }
    if(isIDFound == false)
    {
      gameData.add(GameTable(id: gameID));
      currentIndex = gameData.length - 1;
    }
    emit(GameScoreState(gameData: gameData[currentIndex]));
  }
  void _onAddPlayerData(AddPlayerData event, Emitter<GameScoreState> emit){
    event.playerData;
    gameData[currentIndex].players.add(event.playerData);
    emit(GameScoreState(gameData:gameData[currentIndex]));
  }
  void _onAddPoints(AddPoints event, Emitter<GameScoreState> emit){
    final state = this.state;
    final player = event.playerData;
    final index = state.gameData!.players.indexOf(player);

    GameTable? gamePlayerData = state.gameData;
    gamePlayerData!.players.remove(player);
    player.points++;
    gamePlayerData.players.insert(index, player);

    emit(GameScoreState(gameData:gamePlayerData));

  }
  void _onRemovePoint(RemovePoint event, Emitter<GameScoreState> emit){
    final state = this.state;
    final player = event.playerData;
    final index = state.gameData!.players.indexOf(player);

    GameTable? gamePlayerData = state.gameData;
    gamePlayerData!.players.remove(player);
    if(player.points >0){
      player.points--;
    }
    gamePlayerData.players.insert(index, player);

    emit(GameScoreState(gameData:gamePlayerData));

  }
  void _onDeletePlayer(DeletePlayer event, Emitter<GameScoreState> emit){
    event.playerData;
    gameData[currentIndex].players..remove(event.playerData);
    emit(GameScoreState(gameData:gameData[currentIndex]));
  }


}
