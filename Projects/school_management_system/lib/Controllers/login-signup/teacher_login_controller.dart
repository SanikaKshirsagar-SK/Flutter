import 'dart:developer';

import 'package:flutter/material.dart';
import '../../Models/teacher_model.dart';
import '../../database/database_controller.dart';

// Provider for TeacherLoginController class
class TeacherLoginController with ChangeNotifier {
  late TeacherModel _teacher;
  late DatabaseHelper _dbHelper;
  bool _isLoggedIn = false;

  TeacherLoginController() {
    _dbHelper = DatabaseHelper();
  }
 
  // Principal getter
  TeacherModel get teacher => _teacher;
  bool get isLoggedIn => _isLoggedIn;

  // LoginTeacher method
  Future<TeacherModel?> loginAsTeacher(String username, String password) async {
    try {
      _isLoggedIn = false;
      final teacher = await _dbHelper.getTeacher(username, password);
      if (teacher != null) {
        _teacher = teacher;
        _isLoggedIn = true;
        notifyListeners();
      } else {
        throw Exception('Invalid credentials');
      }
    } catch (e) {
      log('Error logging in as teacher: $e');
      return null;
    }
    return null;
  }
}