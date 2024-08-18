import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class Company extends InheritedWidget {
  final String companyName;
  final int empCount;

  const Company(
      {super.key,
      required this.companyName,
      required this.empCount,
      required super.child});
  @override
  bool updateShouldNotify(Company oldWidget) {
    return companyName != oldWidget.companyName;
  }

  static Company of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Company>()!;
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String companyName = "Google";
  int empCount = 500;
  @override
  Widget build(BuildContext context) {
    return Company(
      companyName: companyName,
      empCount: empCount,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Inherited Widget Demo 2"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CompanyData(),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      companyName = "NVIDIA";
                      empCount = 1000;
                    });
                  },
                  child: const Text("Change Data"))
            ],
          ),
        ),
      ),
    );
  }
}

class CompanyData extends StatelessWidget {
  const CompanyData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(Company.of(context).companyName),
        const SizedBox(
          width: 20,
        ),
        Text("${Company.of(context).empCount}")
      ],
    );
  }
}
