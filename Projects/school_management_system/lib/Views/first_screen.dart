//First Screen
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //For Principal Login
              ElevatedButton(
                child: const Text('Principal Login'),
                onPressed: () {
                  Navigator.pushNamed(context, '/principal_login');
                },
              ),
              const SizedBox(height: 20),
              //For Teacher Login
              ElevatedButton(
                child: const Text('Teacher Login'),
                onPressed: () {
                  Navigator.pushNamed(context, '/login_teacher');
                },
              ),
            ],
          ),
        ));
  }
}