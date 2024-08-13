import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 5),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              // boxShadow: const[
              //   BoxShadow(
              //     color: Colors.redAccent,
              //     offset: Offset(-30, 30),
              //     blurRadius: 0
              //   ),
              //   BoxShadow(
              //     color: Colors.green,
              //     offset: Offset(-30, -30),
              //     blurRadius: 50
              //   ),
              //   BoxShadow(
              //     color: Colors.blue,
              //     offset: Offset(30, 30),
              //     blurRadius: 20
              //   ),
              // ],                                                                            
              gradient: const LinearGradient(
                stops: [0.2, 0.6, 0.8],
                colors: [Colors.purpleAccent, Colors.blueGrey, Colors.red],
              ),
            ),

            // decoration: const BoxDecoration(
            //   border: Border(
            //     top: BorderSide(width: 15),
            //     bottom: BorderSide(width: 15),
            //     left: BorderSide(width: 10),
            //     right: BorderSide(width: 10)
            //   ),
            // ),

            //padding from all sides
            // padding: const EdgeInsets.all(10),

            //padding using symmetric
            // padding: const EdgeInsets.symmetric(
            //   vertical: 10,
            //   horizontal: 10
            // ),

            //padding using only
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
            margin: const EdgeInsets.all(10),

          ),
        ),
      ),
    );
  }
}
