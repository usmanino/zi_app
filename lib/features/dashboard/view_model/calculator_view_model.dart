import 'package:flutter/material.dart';

class CalculatorViewModel extends ChangeNotifier {
  String result = '';

  void addition(String x, String y) {
    result = (num.parse(x) + num.parse(y)).toString();
    notifyListeners();
  }
}
