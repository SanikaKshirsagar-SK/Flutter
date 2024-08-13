import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  String empName = "Rhea";
  int empId = 101;
  @override
  Widget build(BuildContext context) {
    log("IN MYAPP BUILD");
    return ChangeNotifierProvider(
      create: (context) {
        return Employee(empName: empName, empId: empId);
      },
      child: const MaterialApp(
        home: MainApp(),
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("IN MAINAPP BUILD");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Data"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Provider.of<Employee>(context).empName),
            const SizedBox(height: 30),
            Text("${Provider.of<Employee>(context).empId}"),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Provider.of<Employee>(context, listen: false)
                      .changeData("Shreya", 501);
                },
                child: const Text("Change Data")),
            const SizedBox(height:30),
            const Normal(),          
          ],
        ),
      ),
    );
  }
}

class Normal extends StatelessWidget {
  const Normal({super.key});
  @override
  Widget build(BuildContext context) {
    log("IN NORMAL BUILD");
    return Text("${Provider.of<Employee>(context).empId}");
  }
}

class Employee extends ChangeNotifier {
  String empName;
  int empId;

  Employee({required this.empName, required this.empId});

  void changeData(String empName, int empId) {
    this.empName = empName;
    this.empId = empId;
    notifyListeners();
  }
}
