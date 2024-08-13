import 'package:advanced_to_do_app/sign_up.dart';
import 'package:flutter/material.dart';
import 'database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = await createDB();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUp(),
      debugShowCheckedModeBanner: false,
    );
  }
}