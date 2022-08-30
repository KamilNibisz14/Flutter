import 'package:flutter/material.dart';
import 'package:tiktaktoe/Game/Game1Player/Level.dart';
import 'package:tiktaktoe/Game/Game1Player/enumLevel.dart';
import 'package:tiktaktoe/Game/enumPlayer.dart';

import '../../constants.dart';
import '../BoardCell.dart';
import '../BoardCellText.dart';
import 'BoardClassTwoPlayers.dart';

class Game2Players extends StatefulWidget {
  Game2Players();

  @override
  _Game2PlayersState createState() => _Game2PlayersState();
}

class _Game2PlayersState extends State<Game2Players> {
  @override

  var board = new Board2Players();

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
                  const Text('X', style: kBigTextStyle,),
                  Text(board.GetPlayerXScore().toString() + ' - ' + board.GetPLayerOScore().toString(), style: kBigTextStyle,),
                  const Text('O', style: kBigTextStyle,),
                ],
              ),
            ),
          ),
          Expanded(flex: 3,
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
