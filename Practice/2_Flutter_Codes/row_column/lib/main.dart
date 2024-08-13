//Assignment No. 1
//Core2Web in Center

// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context){
//     return const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text("Core2Web"),
//         ),
//       ),
//     );
//   }
// }

//Assignment No. 2
//Three Container

// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget{
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context){

//     return MaterialApp(

//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Three Container"),
//         ),

//         body: Column(
//           children: [
//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.red,
//             ),

//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.green,
//             ),

//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.blue,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Assignment3(),
//     );
//   }
// }

// class Assignment3 extends StatelessWidget {
//   const Assignment3({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text("Assignment 3"),
//       ),
//       body: SizedBox(
//         height: double.infinity,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 100,
//                   width: 100,
//                   color: Colors.orange,
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: const Text("Button 1 "),
//                 )
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 100,
//                   width: 100,
//                   color: Colors.blue,
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: const Text("Button 2"),
//                 )
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 100,
//                   width: 100,
//                   color: Colors.amber,
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: const Text("Button 3"),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//ass 2
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget{

//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Three Container"),
//         ),
//         body: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               height:100,
//               width: 100,
//               color: Colors.red,
//             ),
//             const SizedBox(
//               width: 20,
//             ),

//             Container(
//               height:100,
//               width: 100,
//               color: Colors.green,
//             ),
//             const SizedBox(
//               width: 20,
//             ),

//             Container(
//               height:100,
//               width: 100,
//               color: Colors.blue,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//ass3

// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget{

//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context){
//     return const MaterialApp(
//       home: Ass3()
//     );
//   }
// }

// class Ass3 extends StatelessWidget{
//   const Ass3({super.key});

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Container with Elevated Button"),
//         ),
//         body: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 100,
//                   width: 100,
//                   color: Colors.red
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 ElevatedButton(
//                   onPressed: (){},
//                   child: const Text("Red Button")
//                 )
//               ],
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 100,
//                   width: 100,
//                   color: Colors.green
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 ElevatedButton(
//                   onPressed: (){},
//                   child: const Text("Green Button")
//                 )
//               ],
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 100,
//                   width: 100,
//                   color: Colors.blue
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 ElevatedButton(
//                   onPressed: (){},
//                   child: const Text("Blue Button")
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Assignment1(),
//     );
//   }
// }

// class Assignment1 extends StatefulWidget {
//   const Assignment1({super.key});
//   @override
//   State<Assignment1> createState() => _Assignment1State();
// }

// class _Assignment1State extends State<Assignment1> {
//   int? _count = 0;
//   void _printTableValue() {
//     setState(() {
//       _count = _count! + 2;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Table of 2",
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               "Click button to print table values",
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Text(
//               "$_count",
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: _printTableValue,
//               child: const Text("Print"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ass4
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return const MaterialApp(
//       home: Assignment4()
//     );
//   }
// }

// class Assignment4 extends StatefulWidget{
//   const Assignment4({super.key});
//   @override
//   State<Assignment4> createState() => _Assignment4State();
// }

// class _Assignment4State extends State<Assignment4>{
//   int _counter = 1;
//   void printTable(){
//     setState(() {
//       _counter = _counter * 2;
//     });
//   }

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Table of 2"),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text("Table of 2"),
//             const SizedBox(
//               height: 20,
//             ),
//             const Text("Click the button to print table values..."),
//             const SizedBox(
//               height: 35,
//             ),
//             Text("$_counter"),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: () => printTable(),
//               child: const Text("Click")
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// void main() {
// runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
// const MyApp({super.key});
// @override
// Widget build(BuildContext context) {
// return const MaterialApp(
// home: Assignment2(),
// );
// }
// }

// class Assignment2 extends StatefulWidget {
//   const Assignment2({super.key});
//   @override
//   State<Assignment2> createState() => _Assignment2State();
// }

// class _Assignment2State extends State<Assignment2> {
//   bool box1Color = false;
//   bool box2Color = false;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Color Box"),
//           backgroundColor: Colors.blue,
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
// // BOX 1
//                 Column(
//                   children: [
//                     Container(
//                       height: 100,
//                       width: 100,
//                       color: box1Color ? Colors.red : Colors.black,
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
// // BOX 1 BUTTON
//                     ElevatedButton(
//                       onPressed: () {
//                         setState(() {
//                           box1Color = true;
//                         });
//                       },
//                       child: const Text("Color Box1"),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   width: 20,
//                 ),
// // BOX 2

//                 Column(
//                   children: [
//                     Container(
//                       height: 100,
//                       width: 100,
//                       color: box2Color ? Colors.blue : Colors.black,
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
// // BOX 2 BUTTON
//                     ElevatedButton(
//                       onPressed: () {
//                         setState(() {
//                           box2Color = true;
//                         });
//                       },
//                       child: const Text("Color Box2"),
//                     ),
//                     const SizedBox(
//                       width: 20,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   width: 20,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//File: main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Assignment3(),
    );
  }
}

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});
  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  ///VARIABLE
  int? selectedIndex = 0;

  /// LIST OF IMAGES

  final List<String> imageList = [
    "https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk=",
    "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg",
    "https://st2.depositphotos.com/13108546/46538/i/450/depositphotos_465382586-stock-photo-woman-mountains-landscape-autumn.jpg",
    "https://images.pexels.com/photos/2699478/pexels-photo-2699478.jpeg?cs=srgb&dl=pexels-sasha-prasastika-2699478.jpg&fm=jpg"
  ];
  void showNextImage() {
    setState(() {
      selectedIndex = selectedIndex! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Display Images",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageList[selectedIndex!],
              width: 300,
              height: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: showNextImage,
              child: const Text(
                "Next",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: const Text(
                "Reset",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
