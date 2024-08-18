import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SharedData(data: 50, child: MaterialApp(home: MyApp()));
  }
}

class SharedData extends InheritedWidget {
  final int data;
  const SharedData({super.key, required this.data, required super.child});

  // way 2 to avoid unnecessary object creation
  static SharedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
  }

  @override
  bool updateShouldNotify(SharedData oldWidget) {
    return data != oldWidget.data;
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SharedData obj = SharedData.of(context);    // way 2 create of static method
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inherited Widget"),
      ),
      body: Column(children: [
        Text("${obj.data}"), // way 2 access
        const SizedBox(
          height: 50,
        ),
        Text(
            "${SharedData.of(context).data}"), // way 2.2 rather creating variable use it directly
        const AccessData(),
      ]),
    );
  }
}

class AccessData extends StatelessWidget {
  const AccessData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text("${SharedData.of(context).data}"),
      const AccessDataChild()
      ],
    );
  }
}

class AccessDataChild extends StatelessWidget {
  const AccessDataChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text("${context.dependOnInheritedWidgetOfExactType<SharedData>()!.data}")],  // way 1
    );
  }
}