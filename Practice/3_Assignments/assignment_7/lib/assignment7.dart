import 'dart:math';
import 'package:flutter/material.dart';

class Assignment7 extends StatefulWidget {
  const Assignment7({super.key});

  @override
  State createState() => _Assignment7State();
}

class _Assignment7State extends State {
  int pallindromeCount = 0;
  int armstrongCount = 0;
  int strongCount = 0;
  void isPallindrome() {
    List numList = [11, 21, 121, -131, 155, 515, 456, 789];
    pallindromeCount = 0;
    for (var i = 0; i < numList.length; i++) {
      int temp = numList[i].abs();
      int revNum = 0;
      while (temp != 0) {
        revNum = revNum * 10 + temp % 10;
        temp = temp ~/ 10;
      }
      if (revNum == numList[i].abs()) {
        pallindromeCount++;
      }
    }
  }

  void isArmstrong() {
    List numList = [101, 153, 300, 370, 371, 500];
    armstrongCount = 0;
    for (int i = 0; i < numList.length; i++) {
      int temp = numList[i];
      int digitCount = 0;
      int sum = 0;
      while (temp != 0) {
        temp = temp ~/ 10;
        digitCount++;
      }
      temp = numList[i];
      while (temp != 0) {
        int digit = temp % 10;
        sum = sum + pow(digit, digitCount).toInt();
        temp ~/= 10;
      }
      if (sum == numList[i]) {
        armstrongCount++;
      }
    }
  }

  int fact(int n) {
    return n == 0 ? 1 : n * fact(n - 1);
  }

  void isStrong() {
    List numList = [145, 122, 40585, 111, 123, 5040];
    strongCount = 0;
    for (int number in numList) {
      int temp = number;
      int sum = 0;
      while (temp != 0) {
        int digit = temp % 10;
        sum = sum + fact(digit);
        temp = temp ~/ 10;
      }
      if (sum == number) {
        strongCount++;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 7"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  isPallindrome();
                  setState(() {});
                },
                child: const Text("Click here to check pallindrome count..")),
            const SizedBox(
              height: 25,
            ),
            Text("$pallindromeCount Numbers are Pallindrome..."),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  isArmstrong();
                  setState(() {});
                },
                child: const Text("Click here to check Armstrong number count..")),
            const SizedBox(
              height: 25,
            ),
            Text("$armstrongCount Numbers are Armstrong number..."),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  isStrong();
                  setState(() {});
                },
                child: const Text("Click here to check strong number count..")),
            const SizedBox(
              height: 25,
            ),
            Text("$strongCount Numbers are strong number...")
          ],
        ),
      ),
    );
  }
}
