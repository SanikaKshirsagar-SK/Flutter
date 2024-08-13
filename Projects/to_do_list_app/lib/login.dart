import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sign_up.dart';
import 'to_do.dart';

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
      appBar: AppBar(
        title: Text(
          "To-Do List",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w900,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 15, 1, 15),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset("assets/logo.jpg", height: 100),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Login to your Account",
              style: GoogleFonts.quicksand(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 24 / 16,
                  color: const Color.fromRGBO(0, 0, 0, 1)),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: double.infinity,
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
                  decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: GoogleFonts.quicksand(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 18 / 12,
                          color: const Color.fromRGBO(0, 0, 0, 0.4)),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none))),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: double.infinity,
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
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: GoogleFonts.quicksand(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 18 / 12,
                          color: const Color.fromRGBO(0, 0, 0, 0.4)),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none))),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                height: 49,
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: const Color.fromARGB(255, 15, 1, 15),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ToDoApp()));
                  },
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                )),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New User? Click Here To Register..  ",
                    style: GoogleFonts.quicksand(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 18 / 12,
                        color: const Color.fromRGBO(0, 0, 0, 1))),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUp()));
                  },
                  child: Text("Sign Up",
                      style: GoogleFonts.quicksand(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                          height: 18 / 12,
                          color: const Color.fromRGBO(0, 0, 0, 1))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
