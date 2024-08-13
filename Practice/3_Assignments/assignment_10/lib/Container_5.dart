import 'package:flutter/material.dart';

class Container_5 extends StatelessWidget {
  const Container_5({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 4
            )
          ),
        ),
      ),
    );
  }
}
