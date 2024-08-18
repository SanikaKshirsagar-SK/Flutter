import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/login.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 32,
                color: const Color.fromRGBO(123, 123, 123, 1),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(children: [
                SizedBox(
                  height: 464,
                  child: Image.asset(
                    "assets/1.png",
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  //padding: const EdgeInsets.only(left: 56.56),
                  height: 99,
                  width: 257,
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Enjoy your ",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 34.22,
                            height: 44.49 / 34.22,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "life with ",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 34.22,
                                height: 44.49 / 34.22,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            Text(
                              "Plants",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 34.22,
                                height: 44.49 / 34.22,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Login() ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 320,
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
                          "Get Started",
                          style: TextStyle(
                              fontFamily: 'rubik',
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              height: 32.4 / 18,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          size: 24,
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
