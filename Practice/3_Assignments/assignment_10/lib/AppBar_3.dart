import 'package:flutter/material.dart';

class AppBar_3 extends StatelessWidget {
  const AppBar_3({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Core2Web",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child : Container(
          height: 200,
          width: 360,
          color: Colors.blue,
        )
      ),
    );
  }
}
