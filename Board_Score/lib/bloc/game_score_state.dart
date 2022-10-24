part of 'game_score_bloc.dart';

class GameScoreState extends Equatable {
  GameTable? gameData;
  GameScoreState({this.gameData});
  
  @override
  List<Object> get props => gameData != null ? [gameData!] : [];
}



class GameScoreInitial extends GameScoreState {}
