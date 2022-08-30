import 'package:flutter/material.dart';

class AgentData with ChangeNotifier{
  late String _name;
  late String _surname;
  late String _email;

  String get name => _name;
  String get surname => _surname;

  void setEmail(String email)
  {
    _email = email;
    setData();
    notifyListeners();
  }
  void setData()
  {
    int dot = _email.indexOf('.');
    int monkey = _email.indexOf('@');

    _name = _email[0].toUpperCase() + _email.substring(1, dot);
    _surname = _email[dot + 1].toUpperCase() + _email.substring(dot + 2, monkey);

  }

}