import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('welcome to home page'),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// class HomePageScreen extends StatelessWidget {
//   const HomePageScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Time Table Generator'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               child: const Text('Generate Teacher Time Table'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const HomePageScreen(),
//                   ),
//                 );
//               },
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               child: const Text('Generate Student Time Table'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const HomePageScreen(),
//                   ),
//                 );
//               },
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               child: const Text('View Available Teachers'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const HomePageScreen(),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }