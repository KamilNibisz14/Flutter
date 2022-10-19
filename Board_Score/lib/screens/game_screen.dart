import 'package:board_score/models/game.dart';
import 'package:flutter/material.dart';

import '../widgets/player_data.dart';
import 'game_description.dart';

class GameScreen extends StatelessWidget {
  GameScreen({Key? key, required this.gameData}) : super(key: key);

  Game gameData;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double textContainerWidth = screenWidth *0.7;
    double appBarFontSize = screenWidth / 18;
    double titleFontSize = screenWidth / 18;
    double iconSize = titleFontSize * 1.4;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Board Score',
              style: TextStyle(
                fontSize: appBarFontSize,
              ),
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                children: [
                  SizedBox(
                    width: textContainerWidth,
                    child: Text(
                      gameData.name,
                      style: TextStyle(
                        fontSize: titleFontSize,
                        letterSpacing: 1.2
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => GameDescription(gameData: gameData,),
                        ),
                      );
                    },
                    child: Icon(Icons.info_outline, size: iconSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    PlayerData(name: "Kamil", points: 4,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
