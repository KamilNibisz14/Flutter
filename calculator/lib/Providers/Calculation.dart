import 'package:flutter/material.dart';

class Calculate with ChangeNotifier {
  double _number1 = 0.0;
  double _number2 = 0.0;
  bool _clear = true;
  String _result = '0';
  String _operator = ' ';
  bool _operation = true;

  String get result => _result;
  String get operator => _operator;

  void number_button_click(String number)
  {
    _operation = false;
    if(_clear) {
      if(number != '.') {
        _result = '';
      }else if(_result != '0'){
        _result = '0';
      }
      _clear = false;
    }else if(number == '.' && _result.indexOf('.') >= 0) {
      return;
    }else if(result.length == 9){
      return;
    }
    if(number == '.'){
      _result += '.';
    }else if(number == '0' && _result == '0'){
      return;
    }else if(_result =='0'){
      _result = number;
      _number2 = double.parse(_result);
    }else{
      _result += number;
      _number2 = double.parse(_result);
    }
    notifyListeners();
  }
  void operation_button_click(String argOperation)
  {
    if(!_operation && argOperation == '=' && _operator != ' '){
      if (_operator == '+') {
        _result = CheckEquation((_number1 + _number2).toString());
        _number2 = double.parse(_result);
      } else if(_operator == '-'){
        _result = CheckEquation((_number1 - _number2).toString());
        _number2 = double.parse(_result);
      } else if(_operator == '*'){
        _result = CheckEquation((_number1 * _number2).toString());
        _number2 = double.parse(_result);
      } else if(_operator == '/'){
        if(-_number2 != 0.0) {
          _result = CheckEquation((_number1 / _number2).toString());
          _number2 = double.parse(_result);
        } else {
          _result = 'division by zero is not allowed';
        }
      }
      _operator =' ';
    }

    _clear = true;
    _operator = argOperation;
    if(_operator == '='){
      _operator = ' ';
    }
    _number1 = _number2;
    if(_result == 'division by zero is not allowed'){
      _operator = ' ';
      _operation = true;
    }
    notifyListeners();
  }
  void clearAC()
  {
    _operator = ' ';
    _number1 = 0.0;
    _number2 = 0.0;
    _clear = true;
    _result ='0';
    notifyListeners();
  }
  void clearC()
  {
    _number2 = 0.0;
    _result ='0';
    _clear = true;
    notifyListeners();
  }
  void opposite_number()
  {
    _number2 = -_number2;
    if(_number2.toString()[_number2.toString().length - 1] == '0' &&_number2.toString()[_number2.toString().length - 2] == '.') {
      _result = _number2.toString().substring(0,_number2.toString().length - 2);
    }else {
      _result = _number2.toString();
    }
    notifyListeners();
  }

  String CheckEquation(String equation){
    String equationResult;

    if(equation[equation.length - 1] == '0' && equation[equation.length - 2] == '.'){
      equationResult = equation.substring(0,equation.length - 2);
    } else{
      equationResult = equation;
    }

    if(equationResult.indexOf('.') > 0 && equationResult.indexOf('.') < 8 && equationResult.indexOf('e') == -1) {
      equationResult = equationResult.substring(0, equationResult.indexOf('.') + 3);
    }else if(equation.length > 10) {
      equationResult = double.parse(equationResult).toStringAsExponential(6);
    }

    return equationResult;

  }
}