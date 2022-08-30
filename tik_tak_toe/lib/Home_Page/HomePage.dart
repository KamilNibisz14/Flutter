import 'package:flutter/material.dart';
import 'package:tiktaktoe/Game/Game1Player/Board1Player.dart';
import 'package:tiktaktoe/Game/Game1Player/Level.dart';
import 'package:tiktaktoe/Game/Game1Player/enumLevel.dart';
import 'package:tiktaktoe/Game/Game2Players/Board2Players.dart';
import 'package:tiktaktoe/Home_Page/ButtonsCard.dart';

import '../constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Center(child: Text("TIK TAK TOE",style: TextStyle(fontSize: 40, color: kTextcolor),)),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => (GameLevel())),
                        );

                      },
                      child: ButtonCard(text: '1 Player'
                      )),
                  const SizedBox(height: 40.0),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => (Game2Players())),
                      );
                    },
                    child: ButtonCard(text: '2 Players',)
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
