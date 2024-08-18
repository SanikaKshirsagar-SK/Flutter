import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    log("MYAPP BUILD");
    return Provider(
      create: ((context) {
        return Company(companyName: "Microsoft", empCount: 500);
      }),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainApp(),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    log("MAINAPP BUILD");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Data Using Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Provider.of<Company>(context).companyName),
            const SizedBox(
              height: 20,
            ),
            Text("${Provider.of<Company>(context).empCount}"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Provider.of<Company>(context, listen: false)
                        .updateCompany("Mastercard", 100);
                  });
                },
                child: const Text("Change Name")),
                const SizedBox(
              height: 20,
            ),
            // const Normalclass(),     //only MAINAPP build is called everytime we click not of NORMAL build
            // Normalclass()      // when const not used MAIN APP as well as NORMAL build also called
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
  void updateCompany(String companyName, int empCount) {
    this.companyName = companyName;
    this.empCount = empCount;
  }
}

//MYAPP's build called only once - first time by framework
//MAINAPP's build is called everytime we click the button coz setState calls nearest build only..

class Normalclass extends StatelessWidget {
  const Normalclass({super.key});
  @override
  Widget build(BuildContext context) {
    log("NORMAL CLASS BUILD");
    return Text(Provider.of<Company>(context).companyName);
  }
}
