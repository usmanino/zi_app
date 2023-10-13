import 'package:flutter/material.dart';
import 'package:zi_app/utils/message.dart';

class DashboardViewModel extends ChangeNotifier {
  // bool isLoading = false;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool? _isSuccessful;
  bool? get isSuccessful => _isSuccessful;

  void setBusy(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void setSuccess(bool value) {
    _isSuccessful = value;
    notifyListeners();
  }

  submit(String name, String password) async {
    setBusy(true);

    if (name == 'Chibuzo' && password == '123456') {
      await Future.delayed(const Duration(seconds: 5), () {
        setBusy(false);
      });
      setSuccess(true);
    } else {
      await Future.delayed(const Duration(seconds: 5), () {
        setBusy(false);
      });
      setSuccess(false);
    }
    notifyListeners();
  }
}
