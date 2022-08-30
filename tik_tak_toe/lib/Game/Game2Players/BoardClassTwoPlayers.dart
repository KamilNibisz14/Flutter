import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktaktoe/Game/Game1Player/Level.dart';

import '../../constants.dart';
import '../enumPlayer.dart';
import '../Game1Player/enumLevel.dart';

class Board2Players
{
  bool _currPlayer = true;
  bool _canPlay = true;
  int _PlayerXScore = 0;
  int _PlayerOScore = 0;

  var board = List.filled(kSizeofBoard, Player.none);
  List<Color> colors = new List.filled(kSizeofBoard, Colors.white);
  var winLines = List.generate(8, (i) => List.filled(3,0), growable: false);

  Board2Players()
  {
    winLines[0] = [0,1,2];
    winLines[1] = [3, 4, 5 ];
    winLines[2] = [6, 7, 8 ];
    winLines[3] = [ 0, 3, 6 ];
    winLines[4] = [1, 4, 7];
    winLines[5] = [2, 5, 8];
    winLines[6] = [ 0, 4, 8];
    winLines[7] = [2, 4, 6 ];
  }

  void Play(int index)
  {
    if(_canPlay)
      {
        _Step(index);
      }
    else{
      _Reset();
    }
  }

  void _Step(int index )
  {
    if(board[index] == Player.none)
    {
      _currPlayer == true ? board[index] = Player.PlayerX :board[index] = Player.PlayerO;
      _currPlayer = !_currPlayer;
      _canPlay =  _Solve();
    }
  }

  bool _Solve()
  {
      for (int i = 0; i < 8; ++i) {
        if (board[winLines[i][0]] != Player.none &&
            board[winLines[i][0]] == board[winLines[i][1]] &&
            board[winLines[i][0]] == board[winLines[i][2]]) {
          colors[winLines[i][0]] = Colors.green;
          colors[winLines[i][1]] = Colors.green;
          colors[winLines[i][2]] = Colors.green;

          if(board[winLines[i][0]] == Player.PlayerX)
            _PlayerXScore++;

          if(board[winLines[i][0]] == Player.PlayerO)
            _PlayerOScore++;

          return false;
        }
      }
      return _Checkboard();
    }

    bool _Checkboard()
    {
      bool check = false;
      int couunter = 0;
      for(int i = 0; i < kSizeofBoard; ++i)
      {
        if(board[i] != Player.none)
        {
          couunter++;
        }
      }
      if(couunter == 9)
        return false;
      else
        return true;

    }

    int GetPlayerXScore()
    {
      return _PlayerXScore;
    }
    int GetPLayerOScore()
    {
      return _PlayerOScore;
    }

    void _Reset()
    {
      for(int i = 0; i < kSizeofBoard; ++i)
        {
          board[i] = Player.none;
          colors[i] = Colors.white;
          _canPlay = true;
        }
    }
}