
import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});
  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  int _count = 0;
  void _printTableValue() {
    setState(() {
      _count = _count + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Table of 2",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Click button to print table values",
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "$_count",
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _printTableValue,
              child: const Text("Print"),
            ),
          ],
        ),
      ),
    );
  }
}

