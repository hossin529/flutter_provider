import 'package:flutter/cupertino.dart';

class HomeProvider with ChangeNotifier {
  int _counter = 1;

  get counter => _counter;

  void setCounter() {
    _counter++;
    notifyListeners();
  }
}
