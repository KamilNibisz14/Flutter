import 'package:flutter/material.dart';
import 'package:tiktaktoe/Game/Game1Player/BoardClassOnePlayer.dart';
import 'package:tiktaktoe/Game/Game1Player/enumLevel.dart';

import '../../constants.dart';
import '../BoardCell.dart';


class Game1Player extends StatefulWidget {
  const Game1Player({required this.level});
  final Level level;

  @override

  _Game1PlayerState createState() => _Game1PlayerState();
}

class _Game1PlayerState extends State<Game1Player> {

  @override

  var board = new Board1Player();
  Level? gameLevel;

  void initState() {
    gameLevel = widget.level;
    board.getLevel(gameLevel!);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('YOU', style: kBigTextStyle,),
                  Text(board.GetPlayerUScore().toString() + ' - ' + board.GetPLayerCPUScore().toString(), style: kBigTextStyle,),
                  const Text('CPU', style: kBigTextStyle,),
                ],
              ),
            ),
          ),
          Expanded(flex: 4,
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.9,
                  child:  Container(
                    child: Column(
                      children: [
                        Expanded(child: Row(children: [
                          Expanded(child: GestureDetector(
                              onTap:(){
                                setState(() {
                                  board.Play(0);
                                });
                              },
                              child: BoardCell(player: board.board[0],color: board.colors[0], RightBorder: true,BottomBorder: true,))),
                          Expanded(child: GestureDetector(
                              onTap:(){
                                setState(() {
                                  board.Play(1);
                                });
                              },
                              child: BoardCell(player: board.board[1],color: board.colors[1], RightBorder: true,BottomBorder: true,))),
                          Expanded(child: GestureDetector(
                              onTap:(){
                                setState(() {
                                  board.Play(2);
                                });
                              },
                              child: BoardCell(player: board.board[2],color: board.colors[2],BottomBorder: true,))),
                        ],)),
                        Expanded(child: Row(children: [
                          Expanded(child: GestureDetector(
                              onTap:(){
                                setState(() {
                                  board.Play(3);
                                });
                              },
                              child: BoardCell(player: board.board[3],color: board.colors[3], RightBorder: true,BottomBorder: true,))),
                          Expanded(child: GestureDetector(
                              onTap:(){
                                setState(() {
                                  board.Play(4);
                                });
                              },
                              child: BoardCell(player: board.board[4],color: board.colors[4], RightBorder: true,BottomBorder: true,))),
                          Expanded(child: GestureDetector(
                              onTap:(){
                                setState(() {
                                  board.Play(5);
                                });
                              },
                              child: BoardCell(player: board.board[5],color: board.colors[5],BottomBorder: true,))),
                        ],)),
                        Expanded(child: Row(children: [
                          Expanded(child: GestureDetector(
                              onTap:(){
                                setState(() {
                                  board.Play(6);
                                });
                              },
                              child: BoardCell(player: board.board[6],color: board.colors[6], RightBorder: true))),
                          Expanded(child: GestureDetector(
                              onTap:(){
                                setState(() {
                                  board.Play(7);
                                });
                              },
                              child: BoardCell(player: board.board[7],color: board.colors[7], RightBorder: true))),
                          Expanded(child: GestureDetector(
                              onTap:(){
                                setState(() {
                                  board.Play(8);
                                });
                              },
                              child: BoardCell(player: board.board[8],color: board.colors[8],))),
                        ],)),
                      ],
                    ),
                  ),
                ),
              ),
          ),
          Expanded(flex: 1,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
