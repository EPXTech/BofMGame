import 'package:freezed_annotation/freezed_annotation.dart';

part 'guessing_game_state.freezed.dart';
part 'guessing_game_state.g.dart';

enum GuessingGameStatus {
  initial,
  guessing,
  completed,
}

@freezed
class GuessingGameState with _$GuessingGameState {
  const factory GuessingGameState({
    @Default(GuessingGameStatus.initial) GuessingGameStatus status,
  }) = _GuessingGameState;

  factory GuessingGameState.fromJson(Map<String, Object?> json) =>
      _$GuessingGameStateFromJson(json);
}
