part of 'game_list_bloc.dart';

abstract class GameListEvent extends Equatable {
  const GameListEvent();

  @override
  List<Object> get props => [];
}

class LoadGameEvent extends GameListEvent{}

class SearchEvent extends GameListEvent{
final String text;

const SearchEvent({
required this.text,
});

@override
List<Object> get props => [text];
}
