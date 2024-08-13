import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Create your Account",
                style: GoogleFonts.quicksand(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 35 / 20,
                    color: const Color.fromRGBO(0, 0, 0, 1)),
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
                    controller: nameController,
                    decoration: InputDecoration(
                        hintText: "Name",
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
                    controller: confirmPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
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
              //const Spacer(),
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
                          builder: (context) => const Login()));
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? ",
                      style: GoogleFonts.quicksand(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 18 / 12,
                          color: const Color.fromRGBO(0, 0, 0, 0.6))),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Login()));
                    },
                    child: Text("Sign In",
                        style: GoogleFonts.quicksand(
                            fontSize: 12,
                            fontWeight: FontWeight.w900,
                            height: 18 / 12,
                            color: const Color.fromARGB(255, 15, 1, 15))),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
