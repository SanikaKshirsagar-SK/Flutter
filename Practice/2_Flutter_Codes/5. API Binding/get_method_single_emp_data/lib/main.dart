import 'package:flutter/material.dart';
import 'package:get_method_single_emp_data/viewemp.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ViewEmployee(),
    );
  }
}
