import 'package:flutter/material.dart';
import 'dart:math';
import '../../constants.dart';
import '../enumPlayer.dart';
import 'enumLevel.dart';
import 'dart:async';
import 'dart:io';

class Board1Player
{
  Random random = new Random();
  bool _currPlayer = true;
  bool _canPlay = true;
  int _PlayerUScore = 0;
  int _PlayerCPUScore = 0;
  Level _gameLevel = Level.Medium;

  var board = List.filled(kSizeofBoard, Player.none);
  List<Color> colors = new List.filled(kSizeofBoard, Colors.white);
  var winLines = List.generate(8, (i) => List.filled(3,0), growable: false);

  Board1Player()
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
      board[index] = Player.PlayerX;
      _currPlayer = !_currPlayer;
      _canPlay =  _Solve();
      if(_canPlay == true) {
        CPUMove();
        _canPlay = _Solve();
      }
    }
  }

  void CPUMove()
  {
      List<int> randomList = [];
      var checkLines;
      int sizeLines = 0;
      if(_gameLevel == Level.Easy)
      {
        sizeLines = 3;
        checkLines = List.generate(3, (i) => List.filled(3,0), growable: false);
        for(int i = 0; i < sizeLines; ++i)
        {
          do {
            bool t = true;
            int randomNumber = random.nextInt(8);
            for(int j = 0; j < randomList.length; ++j)
            {
              if(randomList[j] == randomNumber)
                t = false;
            }
            if(t == true)
            {
              randomList.add(randomNumber);
              checkLines[i] = winLines[randomNumber];
              break;
            }
          }while(true);
        }
      }
      else if( _gameLevel == Level.Medium)
      {
        sizeLines = 5;
        checkLines = List.generate(5, (i) => List.filled(3,0), growable: false);
        for(int i = 0; i < sizeLines; ++i)
        {
          do {
            bool t = true;
            int randomNumber = random.nextInt(8);
            for(int j = 0; j < randomList.length; ++j)
            {
              if(randomList[j] == randomNumber)
                t = false;
            }
            if(t == true)
            {
              randomList.add(randomNumber);
              checkLines[i] = winLines[randomNumber];
              break;
            }
          }while(true);
        }
      }
      else if( _gameLevel == Level.Hard)
      {
        sizeLines = 8;
        checkLines = List.generate(8, (i) => List.filled(3,0), growable: false);
        for(int i = 0; i < 8; ++i)
        {
          checkLines = winLines;
        }
      }

      bool check = false;
      if(board[4] == Player.none)
      {
        board[4] = Player.PlayerO;
        check = true;
      }
      if(check == false)
      {
        for(int i = 0; i < sizeLines; ++i)
        {
          if(board[checkLines[i][0]] == Player.none && board[checkLines[i][1]] == Player.PlayerO && board[checkLines[i][2]] == Player.PlayerO)
          {
            board[checkLines[i][0]] = Player.PlayerO;
            check = true;
            break;
          }
          else if ( board[checkLines[i][1]] == Player.none && board[checkLines[i][0]] == Player.PlayerO && board[checkLines[i][2]] == Player.PlayerO)
          {
            board[checkLines[i][1]] = Player.PlayerO;
            check = true;
            break;
          }
          else if ( board[checkLines[i][2]] == Player.none && board[checkLines[i][0]] == Player.PlayerO && board[checkLines[i][1]] == Player.PlayerO)
          {
            board[checkLines[i][2]] = Player.PlayerO;
            check = true;
            break;
          }
        }
      }

      if(check == false)
      {
        for(int i = 0; i < sizeLines; ++i)
        {
          if(board[checkLines[i][0]] == Player.none && board[checkLines[i][1]] == Player.PlayerX && board[checkLines[i][2]] == Player.PlayerX)
          {
            board[checkLines[i][0]] = Player.PlayerO;
            check = true;
            break;
          }
          else if ( board[checkLines[i][1]] == Player.none && board[checkLines[i][0]] == Player.PlayerX && board[checkLines[i][2]] == Player.PlayerX)
          {
            board[checkLines[i][1]] = Player.PlayerO;
            check = true;
            break;
          }
          else if ( board[checkLines[i][2]] == Player.none && board[checkLines[i][0]] == Player.PlayerX && board[checkLines[i][1]] == Player.PlayerX)
          {
            board[checkLines[i][2]] = Player.PlayerO;
            check = true;
            break;
          }
        }
      }

      if(check == false) {
        Random random = new Random();
        int rand;
        do {
          rand = random.nextInt(9);
          if (board[rand] == Player.none) {
            board[rand] = Player.PlayerO;
            break;
          }
        } while (true);
      }


      _currPlayer = !_currPlayer;
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
          _PlayerUScore++;

        if(board[winLines[i][0]] == Player.PlayerO)
          _PlayerCPUScore++;

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

  int GetPlayerUScore()
  {
    return _PlayerUScore;
  }
  int GetPLayerCPUScore()
  {
    return _PlayerCPUScore;
  }

  void _Reset()
  {
    for(int i = 0; i < kSizeofBoard; ++i)
    {
      board[i] = Player.none;
      colors[i] = Colors.white;
      _canPlay = true;
    }
    if(_currPlayer == false)
    {
      CPUMove();
    }
  }
  void getLevel(Level level)
  {
    _gameLevel = level;
  }
}