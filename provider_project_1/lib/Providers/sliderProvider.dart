import 'package:flutter/foundation.dart';

class SliderProvider extends ChangeNotifier {
  double sliderValue = 0.6;

  void onChangeSlider() {
    notifyListeners();
  }
}
