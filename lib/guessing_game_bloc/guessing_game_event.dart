part of 'guessing_game_bloc.dart';

sealed class GuessingGameEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GuessVerse extends GuessingGameEvent {
  final int chapter;
  final int verse;

  GuessVerse({
    required this.chapter,
    required this.verse,
  });

  @override
  List<Object> get props => [chapter, verse];
}
