import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gtc_game/guessing_game_bloc/guessing_game_state.dart';

part 'guessing_game_event.dart';

class GuessingGameBloc extends Bloc<GuessingGameEvent, GuessingGameState> {
  GuessingGameBloc() : super(const GuessingGameState()) {
    on<GuessVerse>(_mapGuessVerseEventToState);
  }

  void _mapGuessVerseEventToState(
      GuessVerse event, Emitter<GuessingGameState> emit) async {
    emit(state.copyWith(status: GuessingGameStatus.guessing));
    final chapter = event.chapter;
    final verse = event.verse;
    debugPrint('guessed: chapter: $chapter, and verse: $verse');

    await Future<void>.delayed(const Duration(seconds: 3));
    emit(state.copyWith(status: GuessingGameStatus.completed));
  }
}
