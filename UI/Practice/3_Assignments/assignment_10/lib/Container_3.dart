import 'package:flutter/material.dart';

class Container_3 extends StatelessWidget {
  const Container_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 10"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                height: 100,
                width:100,
                color: Colors.red
              ),
              Container(
                height: 100,
                width:100,
                color: Colors.green
              ),
              Container(
                height: 100,
                width:100,
                color: Colors.blue
              ),
              Container(
                height: 100,
                width:100,
                color: Colors.yellow
              ),
              Container(
                height: 100,
                width:100,
                color: Colors.purple
              ),
              Container(
                height: 100,
                width:100,
                color: Colors.lightBlue
              ),
              Container(
                height: 100,
                width:100,
                color: Colors.deepOrange
              ),
              Container(
                height: 100,
                width:100,
                color: Colors.black
              ),
              Container(
                height: 100,
                width:100,
                color: Colors.lightGreen
              ),
              Container(
                height: 100,
                width:100,
                color: Colors.lime
              ),
            ],
          ),
      ),
    );
  }
}
