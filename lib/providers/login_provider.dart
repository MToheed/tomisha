import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  int _selectedIndex = 0;

  int get getIndex => _selectedIndex;

  set updateIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
