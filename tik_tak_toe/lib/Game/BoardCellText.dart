import 'package:flutter/material.dart';
import 'package:tiktaktoe/Game/enumPlayer.dart';

class BoardCellText extends StatefulWidget {
  BoardCellText({Key? key, this.player = Player.none, this.color = Colors.white}) : super(key: key);

  Player player;
  Color color;

  @override
  _BoardCellTextState createState() => _BoardCellTextState();
}

class _BoardCellTextState extends State<BoardCellText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          widget.player == Player.PlayerX ? 'X': widget.player == Player.PlayerO ? 'O' : ' ',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w900,
            color: widget.color,
          ),
        ),
      ),
    );
  }
}

