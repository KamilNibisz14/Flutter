part of 'game_list_bloc.dart';

abstract class GameListState extends Equatable {
  const GameListState({this.gameList = const<Game>[]});

  final List<Game> gameList;



  @override
  List<Object> get props => [gameList];
}
class GameListInitial extends GameListState {}

class GameListLoadingState extends GameListState {}

class GameListLoadedState extends GameListState {
  final List<Game> apiResult;
  const GameListLoadedState({
    required this.apiResult,
  });
}

class GameListUpdatedState extends GameListState {
  final List<Game> updatedGameList;
  const GameListUpdatedState({
    required this.updatedGameList,
  });
  @override
  List<Object> get props => [updatedGameList];
}

class GameListErrorState extends GameListState {}
