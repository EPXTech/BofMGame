import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gtc_game/guessing_game_bloc/guessing_game_bloc.dart';
import 'package:gtc_game/guessing_game_bloc/guessing_game_state.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guess the Chapter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Book of Mormon')),
        body: BlocProvider(
          create: (context) => GuessingGameBloc(),
          child: Container(
            color: Colors.black,
            child: BlocBuilder<GuessingGameBloc, GuessingGameState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Text('status: ${state.status.name}'),
                    IconButton(
                        onPressed: () {
                          context
                              .read<GuessingGameBloc>()
                              .add(GuessVerse(chapter: 2, verse: 30));
                        },
                        icon: const Icon(Icons.send),),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
