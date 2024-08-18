import 'package:flutter/material.dart';

class AppBar_2 extends StatelessWidget {
  AppBar_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 10"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: const[
          Icon(
            Icons.abc_outlined
          ),
          Icon(
            Icons.access_alarms_outlined
          )
        ],
      ),
    );
  }
}
