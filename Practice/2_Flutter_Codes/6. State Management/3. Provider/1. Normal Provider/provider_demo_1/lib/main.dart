import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("IN MAINAPP CLASS BUILD");
    return Provider(
      create: (context) {
        return Company(companyName: "Microsoft", empCount: 500);
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  @override
  Widget build(BuildContext context) {
    log("IN MYAPP CLASS BUILD");
    return Scaffold(
      appBar: AppBar(title: const Text("Provider Demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Provider.of<Company>(context).companyName),
            const SizedBox(
              height: 10,
            ),
            Text("${Provider.of<Company>(context).empCount}"),
            // const NormalClass()
          ],
        ),
      ),
    );
  }
}


class Company {
  String companyName;
  int empCount;
  Company({required this.companyName, required this.empCount});
}


// class NormalClass extends StatelessWidget {
//   const NormalClass({super.key});
//   @override
//   Widget build(BuildContext context) {
//     log("IN NORMAL CLASS BUILD");
//     // return Text(Provider.of<Company>(context).companyName);
//     return const Text("Hello");
//   }
// }
//

// Output
//In both return statement output will be same no change build of every class in hierarchy is called 
// [log] IN MAINAPP CLASS BUILD
// [log] IN MYAPP CLASS BUILD
// [log] IN NORMAL CLASS BUILD
