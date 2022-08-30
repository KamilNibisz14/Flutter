import 'package:flutter/material.dart';

class UserCheck with ChangeNotifier{
  late String _email;
  late String _password;
  void setEmail(String email)
  {
    _email = email;
    notifyListeners();
  }
  void setPassword(String password)
  {
    _password = password;
    notifyListeners();
  }
}