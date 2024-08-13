import 'package:flutter/material.dart';
import 'package:navigator_normal/Screens/screen1.dart';
import 'package:navigator_normal/Screens/screen2.dart';
import 'package:navigator_normal/Screens/screen3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
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
        centerTitle: true,
        title: const Text("Home Page"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const Screen1();
                  }),
                );
              },
              child: const Text("Screen 1"),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const Screen2();
                  }),
                );
              },
              child: const Text("Screen 2"),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const Screen3();
                }));
              },
              child: const Text("Screen 3"),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
