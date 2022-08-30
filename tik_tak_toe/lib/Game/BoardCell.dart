import 'package:flutter/material.dart';
import 'package:tiktaktoe/Game/enumPlayer.dart';
import 'package:tiktaktoe/Game/Game2Players/Board2Players.dart';

import 'BoardCellText.dart';

class BoardCell extends StatefulWidget {
  BoardCell({
    required this.player,
    this.RightBorder = false,
    this.LeftBorder = false,
    this.BottomBorder = false,
    this.TopBorder = false,
    this.color = Colors.white,
  });

  bool RightBorder;
  bool LeftBorder;
  bool TopBorder;
  bool BottomBorder;
  Player player;
  Color color;
  @override
  _BoardCellState createState() => _BoardCellState();
}

class _BoardCellState extends State<BoardCell> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: widget.BottomBorder ? 1.0 : 0.0 , color: widget.BottomBorder ? Color(0xFFDFDFDF) : Color(0xFF0A0E21) ),
              right: BorderSide(width: widget.RightBorder ? 1.0 : 0.0, color: widget.RightBorder ? Color(0xFFDFDFDF) : Color(0xFF0A0E21)),
              top: BorderSide(width: widget.TopBorder ? 1.0 : 0.0, color: widget.TopBorder ? Color(0xFFDFDFDF) : Color(0xFF0A0E21)),
              left : BorderSide(width: widget.LeftBorder ? 1.0 : 0.0, color: widget.LeftBorder ? Color(0xFFDFDFDF) : Color(0xFF0A0E21)),
            )
        ),
        child: BoardCellText(player: widget.player,color: widget.color,)
    );
  }
}

