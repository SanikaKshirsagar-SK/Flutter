import 'package:flutter/material.dart';


class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State createState() => _Assignment5State();
}

class _Assignment5State extends State {
  bool box1Color = false;
  bool box2Color = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Change"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(children: [
              Container(
                height: 100,
                width: 100,
                color: box1Color ? Colors.pink : Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      box1Color = true;
                    });
                  },
                  child: const Text("Button 1"))
            ]),
            Column(children: [
              Container(
                height: 100,
                width: 100,
                color: box2Color ? Colors.red : Colors.green,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      box2Color = true;
                    });
                  },
                  child: const Text("Button 2"))
            ]),
          ])
        ],
      ),
    );
  }
}
