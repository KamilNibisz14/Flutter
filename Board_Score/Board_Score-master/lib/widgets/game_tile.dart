import 'package:flutter/material.dart';

class GameTile extends StatelessWidget {
  const GameTile({Key? key, required this.image, required this.gameName})
      : super(key: key);
  final Image image;
  final String gameName;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth / 25;
    return SizedBox(
      child: Column(
        children: [
          Expanded(
              child: Container(
            child: image,
          )),
          Expanded(
              child: Text(
            gameName,
            style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
          ))
        ],
      ),
    );
  }
}
