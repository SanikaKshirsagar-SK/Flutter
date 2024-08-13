import 'package:flutter/material.dart';

class Container_7 extends StatelessWidget {
  const Container_7({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)
            ),
          ),
        ),
      ),
    );
  }
}
