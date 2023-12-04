import 'package:flutter/foundation.dart';

class MyCounterProvider extends ChangeNotifier {
  int counter = 0;

  incrementCounter() {
    counter++;
    notifyListeners();
  }

  decrementCounter() {
    if (counter > 0) {
      counter--;
    } else {
      counter = 0;
    }
    notifyListeners();
  }
}
