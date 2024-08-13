import 'dart:developer';

import 'package:flutter/material.dart';
import '../../Models/principal_model.dart';

// Provider for PrincipalLoginController class
class PrincipalLoginController with ChangeNotifier {
  late PrincipalModel _principal;
  bool _isLoggedIn = false;

  PrincipalLoginController() {

    // Principal Object
    _principal = PrincipalModel(
      principalId: 0,
      principalEmailId: '',
      principalPassword: '',
    );
  }

  // Principal getter
  PrincipalModel get principal => _principal;
  bool get isLoggedIn => _isLoggedIn;

  // Login Principal method
  Future<void> loginAsPrincipal(String email, String password) async {
    try {
      _isLoggedIn = false;
       if (email == 'abc@gmail.com' && password == 'abc1212') {
      _principal = PrincipalModel(
        principalId: 1,
        principalEmailId: email,
        principalPassword: password,
      );
      _isLoggedIn = true;
      notifyListeners();
    } 
    else {
      throw Exception('Invalid credentials');
    }
    } catch (e) {
      log('Error logging in as principal: $e');
    }
  }
}