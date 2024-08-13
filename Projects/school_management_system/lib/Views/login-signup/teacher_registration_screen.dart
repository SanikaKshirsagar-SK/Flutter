import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Controllers/login-signup/teacher_registration_controller.dart';
import '../../Models/teacher_model.dart';

class RegisterTeacherScreen extends StatefulWidget {
  const RegisterTeacherScreen({super.key});

  @override
  RegisterTeacherScreenState createState() => RegisterTeacherScreenState();
}

class RegisterTeacherScreenState extends State<RegisterTeacherScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _educationController = TextEditingController();
  final _subjectsController = TextEditingController();
  final _mobileNoController = TextEditingController();
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _educationController.dispose();
    _subjectsController.dispose();
    _mobileNoController.dispose();
    _emailController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Teacher'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Name TextField
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter a Name';
                    }
                    return null;
                  },
                  controller: _nameController,
                ),
                // Education TextField
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Education'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter an Education';
                    }
                    return null;
                  },
                  controller: _educationController,
                ),
                // Taught Subjects TextField
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Subjects'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Subjects';
                    }
                    return null;
                  },
                  controller: _subjectsController,
                ),
                // Mobile Number TextField
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Mobile No'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter a Mobile No.';
                    }
                    return null;
                  },
                  controller: _mobileNoController,
                ),
                // Email ID TextField
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter an EmailID';
                    }
                    return null;
                  },
                  controller: _emailController,
                ),
                // Username TextField
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Username'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter a Username';
                    }
                    return null;
                  },
                  controller: _usernameController,
                ),
                // Password TextField
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter a Password';
                    }
                    return null;
                  },
                  controller: _passwordController,
                ),
                const SizedBox(height: 20),
                //Register Button
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final teacher = TeacherModel(
                        // teacherId: 0,
                        teacherName: _nameController.text,
                        teacherEducation: _educationController.text,
                        taughtSubjects: _subjectsController.text
                            .split(','), 
                        teacherMobileNo: _mobileNoController.text.toString(),
                        teacherEmailId: _emailController.text,
                        teacherUsername: _usernameController.text,
                        teacherPassword: _passwordController.text,
                      );
                      //If Successful
                      try {
                        //Calling registerTeacher() method of AuthenticatioProvider
                        await Provider.of<TeacherRegisterController>(context,
                                listen: false)
                            .registerTeacher(teacher);
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text('Teacher registered successfully')));
                        Navigator.pushReplacementNamed(context, '/login_teacher');
                      } 
                      //If failed
                      catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text('Error registering teacher')));
                        log('Error registering teacher: $e');

                      }
                    }
                  },
                  child: const Text('Register'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}