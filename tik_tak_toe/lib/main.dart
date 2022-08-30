import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiktaktoe/Game/AAA.dart';
import 'package:tiktaktoe/Game/Game1Player/Level.dart';

import 'Game/Game1Player/Board1Player.dart';
import 'Game/Game2Players/Board2Players.dart';
import 'Home_Page/HomePage.dart';

void main() => runApp(TikTakToe());

class TikTakToe extends StatelessWidget {
  const TikTakToe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: const Color(0xFF0A0E21)),
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
