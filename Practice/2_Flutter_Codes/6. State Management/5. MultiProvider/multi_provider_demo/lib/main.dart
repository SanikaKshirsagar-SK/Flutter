// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         Provider(create: (context) {
//           return Employee(empName: "Rhea", empId: 501);
//         }),
//         ChangeNotifierProvider(create: (context) {
//           return Project(projectName: "ERP_System", devType: "frontend");
//         })
//       ],
//       child: const MaterialApp(
//         home: MainApp(),
//       ),
//     );
//   }
// }

// class MainApp extends StatefulWidget {
//   const MainApp({super.key});

//   @override
//   State<MainApp> createState() => _MainAppState();
// }

// class _MainAppState extends State<MainApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Multi Provider"),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Text(Provider.of<Employee>(context).empName),
//             const SizedBox(
//               height: 30,
//             ),
//             Text("${Provider.of<Employee>(context).empId}"),
//             const SizedBox(
//               height: 30,
//             ),
//             Text(Provider.of<Project>(context).projectName),
//             const SizedBox(
//               height: 30,
//             ),
//             Text(Provider.of<Project>(context).devType),
//             const SizedBox(
//               height: 30,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   Provider.of<Project>(context, listen: false)
//                       .changeData("E-Commerce", "Backend");
//                 },
//                 child: const Text("Change Project"))
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Employee {
//   String empName;
//   int empId;
//   Employee({required this.empName, required this.empId});
// }

// class Project extends ChangeNotifier {
//   String projectName;
//   String devType;
//   Project({required this.projectName, required this.devType});

//   void changeData(String projectName, String devType) {
//     this.projectName = projectName;
//     this.devType = devType;
//     notifyListeners();
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) {
          return Employee(empName: "Rhea", empId: 501);
        }),
        ChangeNotifierProvider(create: (context) {
          return Project(projectName: "ERP_System", devType: "frontend");
        })
      ],
      child: const MaterialApp(
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multi Provider"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(Provider.of(context).empName),
            const SizedBox(
              height: 30,
            ),
            Text("${Provider.of(context).empId}"),
            const SizedBox(
              height: 30,
            ),
            Text(Provider.of(context).projectName),
            const SizedBox(
              height: 30,
            ),
            Text(Provider.of(context).devType),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of(context, listen: false)
                      .changeData("E-Commerce", "Backend");
                },
                child: const Text("Change Project"))
          ],
        ),
      ),
    );
  }
}

class Employee {
  String empName;
  int empId;
  Employee({required this.empName, required this.empId});
}

class Project extends ChangeNotifier {
  String projectName;
  String devType;
  Project({required this.projectName, required this.devType});

  void changeData(String projectName, String devType) {
    this.projectName = projectName;
    this.devType = devType;
    notifyListeners();
  }
}
