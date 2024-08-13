import 'package:flutter/material.dart';

class Container_2 extends StatelessWidget {
  const Container_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 10"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              "asset/nature1.png",
              height:150,
              width:150
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              "asset/nature2.png",
              height: 150,
              width: 150,
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              "asset/nature3.png",
              height: 150,
              width: 150,
            )
          ],
        ),
      ),
    );
  }
}
