import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sqflite/sqflite.dart';
import 'database.dart';
import 'sign_up.dart';
import 'to_do.dart';
import 'to_do_model.dart';
import 'dart:developer';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool flag = false;
  // dynamic database;
  late Database database;
  List<UserInfo> userData = [];

  @override
  void initState() {
    super.initState();
    initializeDatabase();
  }

  void initializeDatabase() async {
    database = await createDB();
  }

  void successSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Logged In Successfully..",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
        margin: const EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 20),
      ),
    );
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const ToDoApp()));
    });
  }

  void unsuccessSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Invalid Username or Password..",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
        margin: const EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 20),
      ),
    );
  }

  void _submitButton() async {
    if (_formKey.currentState!.validate()) {
      userData = await fetchUserData();

      for (int i = 0; i < userData.length; i++) {
        if (userData[i].username == _usernameController.text.trim() &&
            userData[i].password == _passwordController.text) {
          flag = true;
        }
      }
      log("$userData");
      if (flag) {
        successSnackBar();
      } else {
        unsuccessSnackBar();
      }
    }
  }

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
      body: Container(
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/logo.jpg"))),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                      child: TextFormField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle: GoogleFonts.quicksand(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 18 / 12,
                                color: const Color.fromRGBO(0, 0, 0, 0.4)),
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                borderSide: BorderSide.none)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Username";
                          }
                          return null;
                        },
                      ),
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
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: GoogleFonts.quicksand(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 18 / 12,
                                color: const Color.fromRGBO(0, 0, 0, 0.4)),
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                borderSide: BorderSide.none)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Password";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                        height: 49,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor:
                                const Color.fromARGB(255, 15, 1, 15),
                          ),
                          onPressed: () {
                            _submitButton();
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
                        Text("New User? Click Here To Register ",
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
            ),
          ),
        ),
      ),
    );
  }
}
