import 'package:flutter/material.dart';

class Container_1 extends StatelessWidget {
  const Container_1({super.key});

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Assignment 10"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: const[
          Icon(
            Icons.account_balance_wallet_rounded
          )
        ],
       ),
       body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 360,
              height: 200,
              color: Colors.red,
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              width: 360,
              height: 200,
              color: Colors.green,
            ),
          ],
        ),
       ),
    );
  }
}
