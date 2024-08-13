import 'package:flutter/material.dart';

class AppBar_1 extends StatelessWidget {
  const AppBar_1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 10"),
        backgroundColor: Colors.blue,
        actions: const [
          Icon(
            Icons.send_rounded
          ),
          Icon(
            Icons.accessibility_new_outlined
          ),
        ],
      ),
    );
  }
}
