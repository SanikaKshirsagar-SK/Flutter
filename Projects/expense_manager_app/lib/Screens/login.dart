import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'transaction.dart';
import 'sign_up.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SvgPicture.asset("assets/smallLogo.svg",
                // width: 69.76,
                height: 58.82),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Login to your Account",
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 24 / 16,
                  color: Color.fromRGBO(0, 0, 0, 1)),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: Offset(0, 3),
                        color: Color.fromRGBO(0, 0, 0, 0.15)),
                  ]),
              child: TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                      hintText: "Username",
                      hintStyle: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 18 / 12,
                          color: Color.fromRGBO(0, 0, 0, 0.4)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none))),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: Offset(0, 3),
                        color: Color.fromRGBO(0, 0, 0, 0.15)),
                  ]),
              child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 18 / 12,
                          color: Color.fromRGBO(0, 0, 0, 0.4)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none))),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 49,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(14, 161, 125, 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Transaction()));
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(14, 161, 125, 1))),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        height: 22.5 / 15,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  )),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? ",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 18 / 12,
                        color: Color.fromRGBO(0, 0, 0, 0.6))),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUp()));
                  },
                  child: const Text("Sign Up",
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 18 / 12,
                          color: Color.fromRGBO(14, 161, 125, 1))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
