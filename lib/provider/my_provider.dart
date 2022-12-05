import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  bool passwordS = false;

  void changeSecreText() {
    passwordS = !passwordS;
    notifyListeners();
  }
}
