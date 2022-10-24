import 'package:board_score/bloc/game_score_bloc.dart';
import 'package:board_score/screens/main_screen.dart';
import 'package:board_score/services/games-service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'bloc/game_list_bloc.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<GameListBloc>(
        create: (context) => GameListBloc(GamesService()),
      ),
      BlocProvider<GameScoreBloc>(
        create: (context) => GameScoreBloc(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Score Board',
      home: const MainPage(),
    );
  }
}
