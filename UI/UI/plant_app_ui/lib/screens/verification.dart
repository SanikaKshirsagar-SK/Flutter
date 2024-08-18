import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/screens/home.dart';
import 'package:plant_app_ui/screens/login.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  TextEditingController firstBox = TextEditingController();
  TextEditingController secondBox = TextEditingController();
  TextEditingController thirdBox = TextEditingController();
  TextEditingController fourthBox = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 32,
              color: const Color.fromRGBO(123, 123, 123, 1),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Login()));
                      },
                      child: const Icon(Icons.arrow_back,
                          size: 30, color: Color.fromRGBO(0, 0, 0, 1))),
                ),
                const Spacer(),
                SvgPicture.asset(
                  "assets/designRight.svg",
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Verification",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        height: 30 / 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Enter the OTP code from the phone we just sent you.",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 23.34 / 14,
                        color: Color.fromRGBO(0, 0, 0, 0.6)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 56,
                        width: 56,
                        //color: const Color.fromRGBO(255, 255, 255, 1),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 8),
                                  blurRadius: 20,
                                  color: Color.fromRGBO(0, 0, 0, 0.6))
                            ],
                            border: Border.all(
                                width: 1,
                                color: const Color.fromRGBO(204, 211, 196, 1))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: TextField(
                            controller: firstBox,
                            maxLength: 1,
                            decoration:
                                const InputDecoration(
                                  counterText: '',
                                  border: InputBorder.none),
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w800,
                                fontSize: 28
                                
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                   Container(
                        height: 56,
                        width: 56,
                        //color: const Color.fromRGBO(255, 255, 255, 1),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 8),
                                  blurRadius: 20,
                                  color: Color.fromRGBO(0, 0, 0, 0.6))
                            ],
                            border: Border.all(
                                width: 1,
                                color: const Color.fromRGBO(204, 211, 196, 1))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: TextField(
                            controller: secondBox,
                            maxLength: 1,
                            decoration:
                                const InputDecoration(
                                  counterText: '',
                                  border: InputBorder.none),
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w800,
                                fontSize: 28
                                
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                   Container(
                        height: 56,
                        width: 56,
                        //color: const Color.fromRGBO(255, 255, 255, 1),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 8),
                                  blurRadius: 20,
                                  color: Color.fromRGBO(0, 0, 0, 0.6))
                            ],
                            border: Border.all(
                                width: 1,
                                color: const Color.fromRGBO(204, 211, 196, 1))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: TextField(
                            controller: thirdBox,
                            maxLength: 1,
                            decoration:
                                const InputDecoration(
                                  counterText: '',
                                  border: InputBorder.none),
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w800,
                                fontSize: 28
                                
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                   Container(
                        height: 56,
                        width: 56,
                        //color: const Color.fromRGBO(255, 255, 255, 1),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 8),
                                  blurRadius: 20,
                                  color: Color.fromRGBO(0, 0, 0, 0.6))
                            ],
                            border: Border.all(
                                width: 1,
                                color: const Color.fromRGBO(204, 211, 196, 1))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: TextField(
                            controller: fourthBox,
                            maxLength: 1,
                            decoration:
                                const InputDecoration(
                                  counterText: '',
                                  border: InputBorder.none),
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w800,
                                fontSize: 28
                                
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                   
                    ],
                  ),
                  const SizedBox(height: 45,),
                   const Row(
                     children: [
                       Text("Don’t receive OTP code! ",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 23.34 / 14,
                            color: Color.fromRGBO(0, 0, 0, 0.6)),
                       ),
                       Text("Resend",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        height: 23.34 / 14,
                        color: Color.fromRGBO(0, 0, 0, 0.6)),
                   )
                     ],
                   ),
                   const SizedBox(height: 30,),
                       GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Home()),
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
                          "Submit",
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
               
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
