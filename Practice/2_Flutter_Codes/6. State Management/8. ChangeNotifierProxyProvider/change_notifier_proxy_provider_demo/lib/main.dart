//ChangeNotifierProxyProvider

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
    log("IN MYAPP BUILD");
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          log("IN CHANGE NOTIFIER CREATE");
          return Login(userName: "SanikaKshir", password: "Sanika@1212");
        }),
        ChangeNotifierProxyProvider<Login, Employee>(create: (context) {
          log("IN CHANGE NOTIFIER PROXY CREATE");
          return Employee(
              empId: 101,
              empName: "Sanika Kshirsagar",
              userName: Provider.of<Login>(context, listen: false).userName,
              password: Provider.of<Login>(context, listen: false).password);
        }, update: (context, login, child) {
          log("IN CHANGE NOTIFIER PROXY UPDATE");
          return Employee(
              empId: 101,
              empName: "Sanika Kshirsagar",
              userName: login.userName,
              password: Provider.of<Login>(context).password);
        }),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainApp(),
      ),
    );
  }
}

class Login with ChangeNotifier {
  String userName;
  String password;

  Login({required this.userName, required this.password});

  void changePassword(String password) {
    this.password = password;
    notifyListeners();
  }
}

class Employee with ChangeNotifier {
  int empId;
  String empName;
  String userName;
  String password;

  Employee(
      {required this.empId,
      required this.empName,
      required this.userName,
      required this.password});
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    log("IN MAINAPP BUILD");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Proxy Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Provider.of<Login>(context).userName),
            const SizedBox(
              height: 20,
            ),
            Consumer<Login>(builder: (context, login, child) {
              log("IN CONSUMER");
              return Text(login.password);
            }),
            const SizedBox(
              height: 20,
            ),
            Text("${Provider.of<Employee>(context).empId}"),
            const SizedBox(
              height: 20,
            ),
            Text(Provider.of<Employee>(context).empName),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<Login>(context, listen: false)
                      .changePassword("Rhea1122");
                },
                child: const Text("Change"))
          ],
        ),
      ),
    );
  }
}
