// import 'package:assignment_10/AppBar_1.dart';
// import 'package:assignment_10/AppBar_2.dart';
// import 'package:assignment_10/AppBar_3.dart';
// import 'package:assignment_10/Container_1.dart';
// import 'package:assignment_10/Container_2.dart';
// import 'package:assignment_10/Container_3.dart';
// import 'package:assignment_10/Container_4.dart';
// import 'package:assignment_10/Container_5.dart';
// import 'package:assignment_10/Container_6.dart';
import 'package:assignment_10/Container_7.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Container_7(),
      debugShowCheckedModeBanner: false,
    );
  }
}
