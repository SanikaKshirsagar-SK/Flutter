import 'package:flutter/material.dart';
import 'package:navigator_named/Screens/screen1.dart';
import 'package:navigator_named/Screens/screen2.dart';
import 'package:navigator_named/Screens/screen3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/screen1': (context) => const Screen1(),
        '/screen2': (context) => const Screen2(),
        '/screen3': (context) => const Screen3(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("HomePage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/screen1');
                },
                child: const Text("Screen 1")),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/screen2');
                },
                child: const Text("Screen 2")
              ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/screen3');
                },
                child: const Text("Screen 3")
              ),
          ],
        ),
      ),
    );
  }
}
