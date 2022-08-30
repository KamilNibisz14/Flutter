import 'package:flutter/material.dart';
import 'package:tiktaktoe/Home_Page/ButtonsCard.dart';

import 'Board1Player.dart';
import 'enumLevel.dart';

class GameLevel extends StatelessWidget {
  const GameLevel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (Game1Player(level: Level.Easy))),
                  );
                },
                child: ButtonCard(text: 'Easy'
                )),
            const SizedBox(height: 40.0),
            GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (Game1Player(level: Level.Medium))),
                  );
                },
                child: ButtonCard(text: 'Medium'
                )),
            const SizedBox(height: 40.0),
            GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (Game1Player(level: Level.Hard))),
                  );
                },
                child: ButtonCard(text: 'Hard'
                )),
          ],
        ),
      ),
    );
  }
}
