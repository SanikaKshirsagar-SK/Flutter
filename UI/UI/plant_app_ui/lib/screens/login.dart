import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app_ui/screens/verification.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phoneNoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
        body: SingleChildScrollView(
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          Container(
            height: 32,
            color: const Color.fromRGBO(123, 123, 123, 1),
          ),
          SvgPicture.asset("assets/login.svg",),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Log in",
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      height: 45 / 30,
                      color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: phoneNoController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              width: 1, color: Color.fromRGBO(204, 211, 196, 1))),
                      prefixIcon: Icon(
                        Icons.local_phone_outlined,
                        size: 17,
                        color: Color.fromRGBO(164, 164, 164, 1),
                      ),
                      hintText: "Mobile Number",
                      hintStyle: TextStyle(
                          fontFamily: 'inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          height: 15.73 / 13,
                          color: Color.fromRGBO(164, 164, 164, 1))),
                          keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Verification()),
                    );
                  },
                  child: Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(62, 102, 24, 1),
                          Color.fromRGBO(124, 180, 70, 1)
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 20),
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            blurRadius: 40,
                            spreadRadius: 40)
                      ],
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Log in",
                          style: TextStyle(
                              fontFamily: 'rubik',
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              height: 32.4 / 18,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Image.asset(
                  "assets/2.png",
                  height: 359,
                  width: 359,
                  alignment: Alignment.center,
                )
              ],
            ),
          ),
                ],
              ),
        ));
  }
}
