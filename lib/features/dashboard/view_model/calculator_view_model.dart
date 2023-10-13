import 'package:flutter/material.dart';

class CalculatorViewModel extends ChangeNotifier {
  String result = '';

  void addition(String x, String y) {
    result = (num.parse(x) + num.parse(y)).toString();
    notifyListeners();
  }

  void sub(String x, String y) {
    result = (num.parse(x) - num.parse(y)).toString();
    notifyListeners();
  }

  //   sub() {
  //   final x = xController.text.trim();
  //   final y = yController.text.trim();
  //   setState(() {
  //     result = (num.parse(x) - num.parse(y)).toString();
  //   });
  //   print(result);
  // }
}
