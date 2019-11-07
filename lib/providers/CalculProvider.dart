import 'package:flutter/material.dart';

class CalculProvider with ChangeNotifier {
  String _result = 'sds';
  bool _busy = false;
  get result => _result;
  get busy => _busy;

  void setResult(String v) async {
    setBusy(true);
    await Future.delayed(Duration(seconds: 2));
    _result = v;
    setBusy(false);
    notifyListeners();
  }

  void setBusy(bool v) {
    _busy = v;
    notifyListeners();
  }
}
