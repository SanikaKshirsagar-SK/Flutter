import 'dart:developer';

import 'package:flutter/material.dart';
import '../../Models/teacher_model.dart';
import '../../database/database_controller.dart';

class TeacherRegisterController with ChangeNotifier {
  late TeacherModel _teacher;
  late DatabaseHelper _dbHelper;

  TeacherRegisterController() {
    _dbHelper = DatabaseHelper();
   
    // Teacher Object
    _teacher = TeacherModel(
      teacherName: '',
      teacherEducation: '',
      taughtSubjects: [],
      teacherMobileNo: '',
      teacherEmailId: '',
      teacherUsername: '',
      teacherPassword: '',
    );
  }

  // Teacher getter
  TeacherModel get teacher => _teacher;

  // RegisterTeacher method
  Future<void> registerTeacher(TeacherModel teacher) async {
    try {
      await _dbHelper.insertTeacher(teacher);
      _teacher = teacher;
      notifyListeners();
    } catch (e) {
      log('Error registering teacher: $e');
    }
  }
}