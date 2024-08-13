import 'package:flutter/material.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: Ass3()
    );
  }
}

class Ass3 extends StatelessWidget{
  const Ass3({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container with Elevated Button"),
          backgroundColor: Colors.blue,
        ),
        body: 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: const Text("Red Button")
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: const Text("Green Button")
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: const Text("Blue Button")
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
