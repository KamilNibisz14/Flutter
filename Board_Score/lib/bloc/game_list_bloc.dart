import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/game.dart';
import '../services/games-service.dart';

part 'game_list_event.dart';
part 'game_list_state.dart';

class GameListBloc extends Bloc<GameListEvent, GameListState> {
  GamesService gameRepo;
  late List<Game>? apiResult;
  late List<Game>? gameList;


  GameListBloc(
      this.gameRepo
      ) : super(GameListInitial()) {
    on<GameListEvent>((event, emit) async{
      if(event is LoadGameEvent){
        emit(GameListLoadingState());
        apiResult = await gameRepo.fetchGames();
        gameList = apiResult;
        if(apiResult == null){
          emit(GameListErrorState());
        }else{
          emit(GameListLoadedState(apiResult: gameList!),);
       }
      }
    });
    on<SearchEvent>(_SearchEvent);
  }
  /*
  void _SearchEvent(SearchEvent event, Emitter<GameListState> emit){



    emit(GameListUpdatedState(updatedGameList: gameList!));
  }*/

  void _SearchEvent(SearchEvent event, Emitter<GameListState> emit){
    final text = event.text;
    gameList = apiResult!.where((item) =>
        item.name.toString().toLowerCase().contains(text.toString().toLowerCase())
    ).toList();
    emit(GameListUpdatedState(updatedGameList: gameList!));
  }


}
