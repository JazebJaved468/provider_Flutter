import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  bool isShowPassword = true;
  bool isAuthenticating = false;
  String message = '';

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void onChangeShowPassword() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  onLogin() async {
    isAuthenticating = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 3), () {
      message = 'Login Success';
      isAuthenticating = false;
      notifyListeners();
    });
  }
}
