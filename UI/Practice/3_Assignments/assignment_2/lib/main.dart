import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Three Container"),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height:100,
              width: 100,
              color: Colors.red,
            ),
            const SizedBox(
              width: 20,
            ),

            Container(
              height:100,
              width: 100,
              color: Colors.green,
            ),
            const SizedBox(
              width: 20,
            ),

            Container(
              height:100,
              width: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}