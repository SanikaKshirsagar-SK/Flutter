import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'database.dart';
import 'login.dart';
import 'to_do_model.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    database = createDB();
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
          .push(MaterialPageRoute(builder: (context) => const Login()));
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

  void submitButton() async {
    if (_formKey.currentState!.validate()) {
      if (passwordController.text == confirmPasswordController.text) {
        UserInfo obj = UserInfo(
            name: nameController.text,
            username: usernameController.text,
            password: passwordController.text);
        await insertUserData(obj);
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
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
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
                  child: TextFormField(
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
                            borderSide: BorderSide.none)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Name";
                      }
                      return null;
                    },
                  ),
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
                  child: TextFormField(
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
                            borderSide: BorderSide.none)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter same password";
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
                        submitButton();
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
          ),
        ));
  }
}
