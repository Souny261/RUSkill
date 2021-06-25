import 'package:flutter/material.dart';

class MainProvider with ChangeNotifier {
  bool showPass = true;
  bool showConfrimPass = true;
  showPassword({context}) async {
    showPass = !showPass;
    notifyListeners();
  }
  showConfirmPassword({context}) async {
    showConfrimPass = !showConfrimPass;
    notifyListeners();
  }
}
