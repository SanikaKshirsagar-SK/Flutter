import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EphemeralDemo(),
    );
  }
}

class EphemeralDemo extends StatefulWidget {
  const EphemeralDemo({super.key});

  @override
  State<EphemeralDemo> createState() => _EphemeralDemoState();
}

class _EphemeralDemoState extends State<EphemeralDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("setState Demo"),
      ),
      body: const Column(
        children: [
          Course(courseName: "Java"),
          SizedBox(
            height: 50,
          ),
          Course(courseName: "Flutter"),
          SizedBox(
            height: 50,
          ),
          Course(courseName: "Python"),
        ],
      ),
    );
  }
}

class Course extends StatefulWidget {
  final String courseName;
  const Course({super.key, required this.courseName});
  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              count++;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(5),
            height: 50,
            width: 80,
            child: Text(widget.courseName),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Container(
          padding: const EdgeInsets.all(5),
          height: 50,
          width: 80,
          child: Text("Count : $count"),
        ),
      ],
    );
  }
}
