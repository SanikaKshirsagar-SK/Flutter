import 'package:expense_manager_app/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Screens/trash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    _navigateHome();
  }

  _navigateHome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const Login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 280,
            ),
            SvgPicture.asset(
              "assets/logo.svg",
              height: 144,
              width: 144,
            ),
            const SizedBox(
              height: 140,
            ),
            const Text(
              "Expense Manager",
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 24 / 16,
                  color: Color.fromRGBO(0, 0, 0, 1)),
            ),
          ],
        ),
      ),
    );
  }
}
