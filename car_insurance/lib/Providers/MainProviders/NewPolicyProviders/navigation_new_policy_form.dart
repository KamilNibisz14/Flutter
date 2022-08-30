import 'package:flutter/material.dart';


class NavigationPolicyForm with ChangeNotifier{
  int _selectedIndex = 0;
  bool _CanGoNext = false;

  int get selectedIndex  => _selectedIndex;
  bool get CanGoNext  => _CanGoNext;

  void ItemIncrase() {
    if (_selectedIndex < 4) {
      _selectedIndex++;
      UnEnableToGoNextPage();
    }
    notifyListeners();
  }
  void ItemDecrase() {
    if (_selectedIndex > 0) {
      _selectedIndex--;
      UnEnableToGoNextPage();
    }

    notifyListeners();
  }

  void EnableToGoNextPage()
  {
    _CanGoNext = true;

    notifyListeners();
  }
  void UnEnableToGoNextPage()
  {
    _CanGoNext = false;

    notifyListeners();
  }
}
